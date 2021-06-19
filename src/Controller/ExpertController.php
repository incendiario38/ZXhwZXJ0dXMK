<?php


namespace App\Controller;


use App\Entity\ExpSluch;
use App\Entity\Role;
use App\Form\DoctorSluchForm;
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

        $newExpertForm = $this->createForm(
            ExpertKritForm::class,
            null,
            [
                'em' => $this->get('doctrine')->getManager(),
            ]
        );

        $newExpertForm->handleRequest($request);

        return $this->render('expert/newskrit.html.twig', [
            'title' => 'Кабинет врача',
            'form' => $newExpertForm->createView(),
            'breadcrumbs' => [
                [
                    'url' => $this->generateUrl('doctor_dashboard'),
                    'name' => 'Кабинет врача'
                ],
                [
                    'name' => 'Случай лечения'
                ]
            ]
        ]);
    }
}