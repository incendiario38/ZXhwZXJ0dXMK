<?php

namespace App\Controller;

use App\Entity\Role;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class DashboardController extends AbstractController
{
    /**
     * @Route("/doctor/dashboard", name="doctor_dashboard")
     */
    public function doctor(): Response
    {
        $this->denyAccessUnlessGranted(Role::DOCTOR);

        return $this->render('dashboard/doctor.html.twig', [
            'title' => 'Кабинет врача',
        ]);
    }


    /**
     * @Route("/expert/dashboard", name="expert_dashboard")
     */
    public function expert(): Response
    {
        $this->denyAccessUnlessGranted(Role::EXPERT);

        return $this->render('dashboard/expert.html.twig', [
            'title' => 'Кабинет эксперта',
        ]);
    }
}
