<?php


namespace App\Controller;


use App\Entity\ExpSluch;
use App\Entity\Role;
use App\Form\DoctorSluchForm;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class DoctorController extends AbstractController
{
    /**
     * @Route("/doctor/newsluch", name="doctor_newsluch")
     */
    public function doctor(Request $request): Response
    {
        $this->denyAccessUnlessGranted(Role::DOCTOR);

        $newSluchForm = $this->createForm(
            DoctorSluchForm::class,
            null,
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
            $this->getDoctrine()->getManager()->persist($data);
            $this->getDoctrine()->getManager()->flush();
        }

        return $this->render('doctor/newsluch.html.twig', [
            'title' => 'Кабинет врача',
            'form' => $newSluchForm->createView()
        ]);
    }
}