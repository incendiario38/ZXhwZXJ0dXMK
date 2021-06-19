<?php


namespace App\Controller;


use App\Entity\ExpKritLek;
use App\Entity\ExpKritUsl;
use App\Entity\ExpSluch;
use App\Entity\ExpStd;
use App\Entity\ExpStdMkb;
use App\Entity\ExpStdPrep;
use App\Entity\ExpStdUsl;
use App\Entity\Role;
use App\Form\DoctorSluchForm;
use App\Form\ExpertKritForm;
use App\Form\StdForm;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class StdController extends AbstractController
{
    /**
     * @Route("/doctor/std/show", name="doctor_show_std")
     * @Route("/expert/std/show", name="expert_show_std")
     */
    public function stdAction(Request $request): Response
    {
        if (!$this->isGranted(Role::EXPERT) && !$this->isGranted(Role::DOCTOR)) {
            throw $this->createAccessDeniedException();
        }

        $formData = $request->get(StdForm::NAME, ['expStd' => $request->query->get('expStd', null)]);

        $form = $this->createForm(StdForm::class, $formData, ['em' => $this->getDoctrine()->getManager()]);

        if (isset($formData['expStd']) && !empty($formData['expStd'])) {
            $params['std']  = $this->getDoctrine()->getRepository(ExpStd::class)->find($formData['expStd']);

            $form->get('expStd')->setData($params['std']);

            $params['mkb'] =  $this->getDoctrine()->getRepository(ExpStdMkb::class)->findBy(['std' => $params['std']->getId()], ['kodMkb' => 'ASC']);
            $params['usl'] =  $this->getDoctrine()->getRepository(ExpStdUsl::class)->findBy(['idStd' => $params['std']->getId()], ['kodUsl' => 'ASC']);
            $params['lek'] =  $this->getDoctrine()->getRepository(ExpStdPrep::class)->findBy(['idStd' => $params['std']->getId()], ['kod' => 'ASC']);
        }

        $request->request->set(StdForm::NAME, $formData);

        $form->handleRequest($request);

        $params['title'] = 'Просмотр стандартов';
        $params['form'] = $form->createView();

        return $this->render('std/index.html.twig', $params);
    }
}