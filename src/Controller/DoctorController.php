<?php


namespace App\Controller;


use App\Entity\ExpKritLek;
use App\Entity\ExpKritUsl;
use App\Entity\ExpSluch;
use App\Entity\ExpStdPrep;
use App\Entity\Role;
use App\Form\DoctorSluchForm;
use App\Form\ExpertKritForm;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class DoctorController extends AbstractController
{
    /**
     * @Route("/doctor/newsluch", name="doctor_newsluch")
     * @Route("/doctor/newsluch/{id}", name="doctor_newsluch")
     */
    public function doctor(Request $request, $id = null): Response
    {
        $this->denyAccessUnlessGranted(Role::DOCTOR);

        if ($id) {
            $sluchLech = $this->get('doctrine')->getManager()->getRepository(ExpSluch::class)->find($id);
        }


        $newSluchForm = $this->createForm(
            DoctorSluchForm::class,
            ($id && $sluchLech instanceof ExpSluch) ? $sluchLech : null,
            [
                'em' => $this->get('doctrine')->getManager(),
                'user' => $this->getUser()
            ]
        );

        $newSluchForm->handleRequest($request);

        if ($newSluchForm->isSubmitted() && $newSluchForm->isValid()) {
            /** @var ExpSluch $data */
            $data = $newSluchForm->getData();
            $data->setVrach($this->getUser()->getVrach());
            $data->setLpuId($this->getUser()->getVrach()->getLpu()->getLpuId());

            foreach ($data->getUsl() as $usl) {
                $usl->setSluch($data);
                $this->getDoctrine()->getManager()->persist($usl);
            }

            foreach ($data->getLek() as $lek) {
                $lek->setSluch($data);
                $this->getDoctrine()->getManager()->persist($lek);
            }

            $this->getDoctrine()->getManager()->persist($data);
            $this->getDoctrine()->getManager()->flush();

            $id = $data->getId();

            $this->get('doctrine')->getManager()
                ->getRepository(ExpSluch::class)
                ->runProcedureCheckData($id);

            return $this->redirect("/doctor/newsluch/" . $id);
        }

        return $this->render('doctor/newsluch.html.twig', [
            'title' => 'Кабинет врача',
            'form' => $newSluchForm->createView(),
            'breadcrumbs' => [
                [
                    'url' => $this->generateUrl('doctor_dashboard'),
                    'name' => 'Кабинет врача'
                ],
                [
                    'url' => $this->generateUrl('doctor_grid'),
                    'name' => 'Случаи лечения'
                ],
                [
                    'name' => 'Редактирование случая лечения'
                ]
            ]
        ]);
    }

    /**
     * @Route("/doctor/krit/show", name="doctor_show_krit")
     * @Route("/expert/krit/show", name="expert_show_krit")
     */
    public function kritAction(Request $request): Response
    {
        if (!$this->isGranted(Role::EXPERT) && !$this->isGranted(Role::DOCTOR)) {
            throw $this->createAccessDeniedException();
        }

        $formData = $request->get(ExpertKritForm::NAME);
        unset($formData['_token']);

        if (! isset($formData['expStd'])) {
            $formData['expStd'] = null;
            $formData['krit_zag'] = null;
            $formData['krit_str'] = null;
            $formData['usl'] = [];
            $formData['lek'] = [];
        } else if (isset($formData['expStd']) ) {
            $last = $request->getSession()->get('expStd', -1);
            if ($last != $formData['expStd']) {
                $request->getSession()->set('expStd', $formData['expStd']);
                $formData['krit_zag'] = null;
                $formData['krit_str'] = null;
                $formData['usl'] = [];
                $formData['lek'] = [];
            }
        }

        if (! isset($formData['krit_zag'])) {
            $formData['krit_zag'] = null;
            $formData['krit_str'] = null;
            $formData['usl'] = [];
            $formData['lek'] = [];
        } else if (isset($formData['krit_zag']) ) {
            $last = $request->getSession()->get('krit_zag', -1);
            if ($last != $formData['krit_zag']) {
                $request->getSession()->set('krit_zag', $formData['krit_zag']);
                $formData['krit_str'] = null;
                $formData['usl'] = [];
                $formData['lek'] = [];
            }
        }

        if (! isset($formData['krit_str'])) {
            $formData['krit_str'] = null;
            $formData['usl'] = [];
            $formData['lek'] = [];
        } else if (isset($formData['krit_str']) ) {
            $last = $request->getSession()->get('krit_str', -1);

            if ($last != $formData['krit_str'] || (! isset($formData['usl']) && ! isset($formData['lek']))) {
                $request->getSession()->set('krit_str', $formData['krit_str']);

                $formData['usl'] = [];
                $formData['lek'] = [];

                $dataset = $this->getDoctrine()->getRepository(ExpKritUsl::class)->findBy([
                    'idKrit' => $formData['krit_str']
                ]);

                foreach ($dataset as $item) {
                    $formData['usl'][] = [
                        'expStd' => $item->getIdStdUsl()->getIdStd() ."",
                        'krit_str' => $item->getIdStdUsl()->getId() ."",
                        'period' => $item->getPeriod() ?? 0,
                    ];
                }

                $dataset = $this->getDoctrine()->getRepository(ExpKritLek::class)->findBy([
                    'idKrit' => $formData['krit_str']
                ]);


                foreach ($dataset as $item) {
                    $stdUsl = $this->getDoctrine()->getRepository(ExpStdPrep::class)->find($item->getIdStdPrep());
                    $formData['lek'][] = [
                        'expStd' => $stdUsl->getIdStd() ."",
                        'std_prep' => $stdUsl->getId() ."",
                    ];
                }
            }
        }
        $request->getSession()->save();

        $request->request->set(ExpertKritForm::NAME, $formData);


        $newExpertForm = $this->createForm(ExpertKritForm::class, $formData, [
            'em' => $this->getDoctrine()->getManager(),
            'lock' => true,
        ]);

        $newExpertForm->handleRequest($request);

        return $this->render('doctor/newskrit.html.twig', [
            'title' => 'Просмотр критерий качества',
            'form' => $newExpertForm->createView(),
            'breadcrumbs' => [
                [
                    'url' => $this->generateUrl('doctor_dashboard'),
                    'name' => 'Кабинет врача',
                ],
                [
                    'name' => 'Просмотр критерий качества',
                ],
            ],
        ]);
    }
}