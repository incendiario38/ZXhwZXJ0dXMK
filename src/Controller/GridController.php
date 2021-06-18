<?php

namespace App\Controller;

use App\Entity\ExpVrach;
use App\Entity\Role;
use App\Entity\User;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class GridController extends AbstractController
{
    /**
     * @Route("/doctor/grid", name="doctor_grid")
     */
    public function doctor(): Response
    {
        $this->denyAccessUnlessGranted(Role::DOCTOR);

        return $this->render('grid/doctor.html.twig', [
            'title' => 'Случаи лечения',
            'breadcrumbs' => [
                [
                    'url' => $this->generateUrl('doctor_dashboard'),
                    'name' => 'Кабинет врача'
                ],
                [
                    'name' => 'Случаи лечения'
                ]
            ]
        ]);
    }

    /**
     * @Route("/doctor/grid/ajax", name="doctor_grid_ajax")
     */
    public function doctorAjax(): Response
    {
        $this->denyAccessUnlessGranted(Role::DOCTOR);

        /** @var User $user */
        $user = $this->getUser();

        $sluch =  $this->getDoctrine()->getRepository(ExpVrach::class)->getExpSluch($user->getVrach());

        return new JsonResponse([
            'data' =>$sluch,
        ]);
    }
}
