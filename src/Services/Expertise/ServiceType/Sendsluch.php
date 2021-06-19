<?php

namespace App\Services\Expertise\ServiceType;


use App\Entity\ExpLek;
use App\Entity\ExpMkb10;
use App\Entity\ExpPatient;
use App\Entity\ExpSluch;
use App\Entity\ExpSluchLek;
use App\Entity\ExpSluchUsl;
use App\Entity\ExpUsl;
use App\Entity\ExpVrach;
use App\Entity\User;
use App\Services\Expertise\StructType\Result;
use App\Services\Expertise\StructType\Sluch;
use App\Services\SSPCallerOperation;
use Doctrine\ORM\EntityManager;
use Exception;

/**
 * This class stands for Sendsluch ServiceType
 * @subpackage Services
 */
class Sendsluch
{
    protected $ssp;

    /**
     * Sendsluch constructor.
     */
    public function __construct(SSPCallerOperation $ssp)
    {
        $this->ssp = $ssp;
    }

    /**
     * @param \App\Services\Expertise\StructType\Sendsluch $inputParameters
     * @return Result
     */
    public function run($inputParameters = null)
    {

        /** @var EntityManager $em */
        $em = $this->ssp->getContainer()->get('doctrine')->getManager();

        /** @var Sluch $sluch */
        foreach ($inputParameters->getSluch() as $sluch) {
            $vrach = $this->ssp->getContainer()
                ->get('doctrine')
                ->getRepository(ExpVrach::class)
                ->find($sluch->getIdVrach());

            /** @var User $vrach */
            if (!$vrach) {
                throw new Exception("Врач с идентификатором " . $sluch->getIdVrach() . " не найден");
            }

            $patient = $em->getRepository(ExpPatient::class)->findOneBy(['enp' => $sluch->getEnp()]);

            if (!$patient instanceof ExpPatient) {
                throw new Exception("Пациент с ЕНП: " . $sluch->getEnp() . " не найден");
            }

            if ($sluch->getDbeg() > $sluch->getDend()) {
                throw new Exception("Дата начала лечения не может быть больше даны окончания лечения");
            }

            $mkb = $em->getRepository(ExpMkb10::class)->find($sluch->getMkb());
            if (!$mkb instanceof ExpMkb10) {
                throw new Exception("Данный диагноз нельзя добавить в оценку экспертизы");
            }

            if (!in_array($sluch->getUslOk(), [0, 4, 9])) {
                throw new Exception("Некорректное значение услоя оказания медицинской помощи может быть [0,4,9]");
            }

            if (!in_array($sluch->getForma(), [1, 2, 3])) {
                throw new Exception("Некорректное значение формы оказания медицинской помощи, может быть [1,2,3]");
            }

            if (!in_array($sluch->getStage(), [0, 1])) {
                throw new Exception("Некорректное значение степени тяжести [0,1]");
            }

            if (!in_array($sluch->getPhase(), [0, 1])) {
                throw new Exception("Некорректное значение фазы состояния [0,1]");
            }

            $ixestsMedkard = $em->getRepository(ExpSluch::class)->findOneBy(['nMedCard' => $sluch->getNMedCard()]);

            if ($ixestsMedkard instanceof ExpSluch) {
                throw new Exception("Случай лечения с номером " . $sluch->getNMedCard() . " уже создан");
            }

            $sluchNew = new ExpSluch();
            $sluchNew->setLpuId($vrach->getVrach()->getLpu()->getLpuId());
            $sluchNew->setVrach($vrach->getVrach());
            $sluchNew->setDbeg($sluch->getDbeg());
            $sluchNew->setDend($sluch->getDend());
            $sluchNew->setUslOk($sluch->getUslOk());
            $sluchNew->setMkb($mkb);
            $sluchNew->setForma($sluch->getForma());
            $sluchNew->setStage($sluch->getStage());
            $sluchNew->setPhase($sluch->getPhase());
            $sluchNew->setPatient($patient);
            $sluchNew->setNMedCard($sluch->getNMedCard());

            foreach ($sluch->getUslCollection()->getUsl() as $uslCollection) {
                $uslExists = $em->getRepository(ExpUsl::class)->find($uslCollection->getId());
                if (!$uslExists instanceof ExpUsl) {
                    throw new Exception("Передана некорректная услуга");
                }

                $sluchNew->addUsl((new ExpSluchUsl())
                    ->setSluch($sluchNew)
                    ->setDateUsl($uslCollection->getDateUsl())->setUsl($uslExists));
            }

            foreach ($sluch->getLekCollection()->getLek() as $lekColection) {
                $existsLek = $em->getRepository(ExpLek::class)->find($lekColection->getLekName());
                if (!$existsLek instanceof ExpLek) {
                    throw new Exception("Переан некорректный лекарственные препарат");
                }

                $sluchNew->addLek((new ExpSluchLek())->setSluch($sluchNew)->setLekName($existsLek));
            }


            $em->persist($sluchNew);
            $em->flush();

        }


        return (new Result())->setStatus("Данные успешно добавлены");
    }

}
