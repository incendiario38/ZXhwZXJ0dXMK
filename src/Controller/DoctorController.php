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
     * @Route("/doctor/newsluch/{id}", name="doctor_newsluch")
     */
    public function doctor(Request $request, $id = null): Response
    {
        $this->denyAccessUnlessGranted(Role::DOCTOR);

        if ($id) {
            $sluchLech = $this->get('doctrine')->getManager()->getRepository(ExpSluch::class)->find($id);
        }


        $newSluchForm = $this->createForm(
            DoctorSluchForm::class,
            ($id && $sluchLech instanceof ExpSluch) ? $sluchLech : null,
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

            foreach ($data->getUsl() as $usl) {
                $usl->setSluch($data);
                $this->getDoctrine()->getManager()->persist($usl);
            }

            foreach ($data->getLek() as $lek) {
                $lek->setSluch($data);
                $this->getDoctrine()->getManager()->persist($lek);
            }

            $this->getDoctrine()->getManager()->persist($data);
            $this->getDoctrine()->getManager()->flush();

            $id = $data->getId();

            return $this->redirect("/doctor/newsluch/" . $id);
        }

        return $this->render('doctor/newsluch.html.twig', [
            'title' => 'Кабинет врача',
            'form' => $newSluchForm->createView(),
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