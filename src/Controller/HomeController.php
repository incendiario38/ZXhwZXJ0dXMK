<?php

namespace App\Controller;

use App\Entity\Role;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class HomeController extends AbstractController
{
    /**
     * @Route("/", name="app_home")
     */
    public function index(): Response
    {
        if ($this->isGranted(Role::DOCTOR)) {
            return $this->redirectToRoute('doctor_dashboard');
        }

        if ($this->isGranted(Role::EXPERT)) {
            return $this->redirectToRoute('expert_dashboard');
        }

        return $this->redirectToRoute('app_logout');
    }
}
