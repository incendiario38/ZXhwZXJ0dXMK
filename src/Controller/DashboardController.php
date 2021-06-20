<?php

namespace App\Controller;

use App\Entity\ExpLpu;
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

        $em = $this->get('doctrine')->getManager();

        $repoLpu = $em->getRepository(ExpLpu::class)->getCtatByMu();
        $legend = [];
        $series = [];

        foreach ($repoLpu as $lpu) {
            $legend[] = str_replace('"', '', $lpu['name']);

            $series[] = [
                'name' => str_replace('"', '', $lpu['name']),
                'type' => 'line',
                'stack' => 'stk',
                'smooth' => true,
                'data' => [
                    $lpu['m1'],
                    $lpu['m2'],
                    $lpu['m3'],
                    $lpu['m4'],
                    $lpu['m5'],
                    $lpu['m6'],
                ]
            ];
        }

        $option = [
            'tooltip' => [
                'trigger' => 'axis'
            ],
            'legend' => [
                'data' => $legend
            ],
            [
                'grid' => [
                    'left' => '3%',
                    'right' => '4%',
                    'bottom' => '3%',
                    'containLabel' => true
                ]
            ],
            'xAxis' => [
                'type' => 'category',
                'boundaryGap' => false,
                'data' => ['Январь', 'Февраль', 'Март', 'Апрель', 'Май', 'Июнь']
            ],
            'yAxis' => [
                'type' => 'value'
            ],
            'series' => $series
        ];

        return $this->render('dashboard/expert.html.twig', [
            'title' => 'Кабинет эксперта',
            'stat' => json_encode($option),
        ]);
    }

    /**
     * @Route("/expert/report", name="expert_report")
     */
    public function report(): Response
    {
        $this->denyAccessUnlessGranted(Role::EXPERT);

        $em = $this->get('doctrine')->getManager();

        $repoLpu = $em->getRepository(ExpLpu::class)->getCtatByMu();
        $legend = [];
        $series = [];

        foreach ($repoLpu as $lpu) {
            $legend[] = str_replace('"', '', $lpu['name']);

            $series[] = [
                'name' => str_replace('"', '', $lpu['name']),
                'type' => 'line',
                'stack' => 'stk',
                'smooth' => true,
                'data' => [
                    $lpu['m1'],
                    $lpu['m2'],
                    $lpu['m3'],
                    $lpu['m4'],
                    $lpu['m5'],
                    $lpu['m6'],
                ]
            ];
        }

        $option = [
            'tooltip' => [
                'trigger' => 'axis'
            ],
            'legend' => [
                'data' => $legend
            ],
            [
                'grid' => [
                    'left' => '3%',
                    'right' => '4%',
                    'bottom' => '3%',
                    'containLabel' => true
                ]
            ],
            'xAxis' => [
                'type' => 'category',
                'boundaryGap' => false,
                'data' => ['Январь', 'Февраль', 'Март', 'Апрель', 'Май', 'Июнь']
            ],
            'yAxis' => [
                'type' => 'value'
            ],
            'series' => $series
        ];

        return $this->render('dashboard/report.html.twig', [
            'title' => 'Отчеты',
            'stat' => json_encode($option),
            'breadcrumbs' => [
                [
                    'url' => $this->generateUrl('expert_dashboard'),
                    'name' => 'Кабинет эксперта',
                ],
                [
                    'name' => 'Отчеты',
                ],
            ],
        ]);
    }
}
