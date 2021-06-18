<?php

namespace App\Controller;

use App\Entity\ExpVrach;
use App\Entity\Role;
use App\Entity\User;
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

        /** @var User $user */
        $user = $this->getUser();

        $cntSluch = $this->getDoctrine()->getRepository(ExpVrach::class)->cntExpSluch($user->getVrach());

        return $this->render('dashboard/doctor.html.twig', [
            'title' => 'Кабинет врача',
            'cnt_sluch' => $cntSluch,
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
