<?php

namespace App\Controller;

use App\Entity\ExpVrach;
use App\Entity\Role;
use App\Entity\User;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;
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
                    'name' => 'Кабинет врача',
                ],
                [
                    'name' => 'Случаи лечения',
                ],
            ],
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

        $sluch = $this->getDoctrine()->getRepository(ExpVrach::class)->getExpSluch($user->getVrach());

        return new JsonResponse([
            'data' => $sluch,
        ]);
    }

    /**
     * @Route("/doctor/sluch/expert/ajax", name="doctor_expert_by_sluch_ajax")
     */
    public function doctorExpertBySluch(Request $request): Response
    {
        $this->denyAccessUnlessGranted(Role::DOCTOR);

        $id = $request->get('id', -1);

        if ($id === -1) {
            return new Response('Не задан идентификатор');
        }

        $sluch = $this->getDoctrine()->getRepository(ExpVrach::class)->getExpSluchById($id);

        if ($sluch['status'] = 2) {
            $usl = $this->getDoctrine()->getRepository(ExpVrach::class)->getUslBySluch($id);
            $lek = $this->getDoctrine()->getRepository(ExpVrach::class)->getLekBySluch($id);
        } else {
            $usl = [];
            $lek = [];
        }

        return $this->render('grid/sluch_expert.html.twig', [
            'data' => $this->getDoctrine()->getRepository(ExpVrach::class)->getExpertBySluch($id),
            'usl' => $usl,
            'lek' => $lek,
        ]);
    }
}
