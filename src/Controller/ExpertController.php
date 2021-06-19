<?php


namespace App\Controller;


use App\Entity\ExpKritLek;
use App\Entity\ExpKritUsl;
use App\Entity\Role;
use App\Form\ExpertKritForm;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class ExpertController extends AbstractController
{
    /**
     * @Route("/expert/newsluch", name="expert_new_krit")
     */
    public function expertAction(Request $request): Response
    {
        $this->denyAccessUnlessGranted(Role::EXPERT);

        $formData = $request->get(ExpertKritForm::NAME);
        unset($formData['_token']);

        \dump($formData);

        if (! isset($formData['krit_str'])) {
            $formData['krit_str'] = null;
            $formData['usl'] = [];
            $formData['lek'] = [];
        } else if (isset($formData['krit_str']) ) {
            $last = $request->getSession()->get('krit_str', -1);
            \dump($last);
            \dump($formData['krit_str']);

            if ($last != $formData['krit_str'] || (! isset($formData['usl']) && ! isset($formData['lek']))) {
                $request->getSession()->set('krit_str', $formData['krit_str']);
                $request->getSession()->save();

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
                    $formData['lek'][] = [
                        'expStd' => $item->getIdStdUsl()->getIdStd() ."",
                        'std_prep' => $item->getIdStdUsl()->getId() ."",
                    ];
                }
            }
        }

        $request->request->set(ExpertKritForm::NAME, $formData);

        $newExpertForm = $this->createForm(ExpertKritForm::class, $formData, [
            'em' => $this->getDoctrine()->getManager(),
        ]);

        $newExpertForm->handleRequest($request);

        return $this->render('expert/newskrit.html.twig', [
            'title' => 'Кабинет врача',
            'form' => $newExpertForm->createView(),
            'breadcrumbs' => [
                [
                    'url' => $this->generateUrl('expert_dashboard'),
                    'name' => 'Кабинет эксперта',
                ],
                [
                    'name' => 'Управление критериями качества',
                ],
            ],
        ]);
    }
}