<?php

namespace App\Repository;

use App\Entity\ExpVrach;
use App\Entity\User;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\ORM\NonUniqueResultException;
use Doctrine\ORM\NoResultException;
use Doctrine\ORM\Query\ResultSetMapping;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method ExpVrach|null find($id, $lockMode = null, $lockVersion = null)
 * @method ExpVrach|null findOneBy(array $criteria, array $orderBy = null)
 * @method ExpVrach[]    findAll()
 * @method ExpVrach[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class ExpVrachRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, User::class);
    }

    public function getExpSluch(ExpVrach $vrach): array
    {
        $sql = <<<SQL
select t.id_pers,
       t.dbeg,
       t.dend,
       CASE
           WHEN t.usl_ok = 0 THEN 'Стационар'
           WHEN t.usl_ok = 4 THEN 'Поликлиника'
           WHEN t.usl_ok = 9 THEN 'Скорая помощь'
           else
               'Не заполнен'
           end as usl_ok,

       t.mkb,
       CASE
           WHEN t.forma = 1 THEN 'Плановая'
           WHEN t.forma = 1 THEN 'Экстренная'
           WHEN t.forma = 1 THEN 'Неотложная'
           else
               'Не заполнен'
           end AS forma,
       CASE
           WHEN t.phase = 1 THEN 'нет'
           WHEN t.phase = 2 THEN 'Острая'
           else 'нет'
           end AS phase,
       CASE
           WHEN t.stage = 1 THEN 'нет'
           WHEN t.stage = 2 THEN 'Тяжелая'
           else 'нет'
           end AS stage,
       t.id,
       t.n_med_card,
       p.fam,
       p.im,
       p.ot,
       p.dr,
       p.mr,
       CASE
           WHEN p.w = 1 then
               'Мужской'
           WHEN p.w = 0 then
               'Женский'
           else
               'Не заполнен'
           end as w,
       p.enp
from exp_sluch t
         left join exp_patient p on p.id_pers = t.id_pers
         left join exp_lpu l on l.lpu_id = t.lpu_id
where t.id_vrach = :vrach 
SQL;

        $rsm = new ResultSetMapping();
        $rsm->addScalarResult('id', 'id');
        $rsm->addScalarResult('dbeg', 'dbeg');
        $rsm->addScalarResult('dend', 'dend');
        $rsm->addScalarResult('usl_ok', 'usl_ok');
        $rsm->addScalarResult('mkb', 'mkb');
        $rsm->addScalarResult('forma', 'forma');
        $rsm->addScalarResult('phase', 'phase');
        $rsm->addScalarResult('stage', 'stage');
        $rsm->addScalarResult('n_med_card', 'n_med_card');
        $rsm->addScalarResult('fam', 'fam');
        $rsm->addScalarResult('im', 'im');
        $rsm->addScalarResult('ot', 'ot');
        $rsm->addScalarResult('dr', 'dr');
        $rsm->addScalarResult('mr', 'mr');
        $rsm->addScalarResult('w', 'w');
        $rsm->addScalarResult('enp', 'enp');

        $query = $this->getEntityManager()->createNativeQuery($sql, $rsm);
        $query->setParameter('vrach', $vrach->getId());

        return $query->getArrayResult();
    }

    public function cntExpSluch(ExpVrach $vrach): int
    {
        $sql = <<<SQL
select
count(*) cnt
from exp_sluch t
left join exp_patient p on p.id_pers = t.id_pers
left join exp_lpu l on l.lpu_id = t.lpu_id
where t.id_vrach = :vrach 
SQL;

        $rsm = new ResultSetMapping();
        $rsm->addScalarResult('cnt', 'cnt');

        $query = $this->getEntityManager()->createNativeQuery($sql, $rsm);
        $query->setParameter('vrach', $vrach->getId());

        try {
            return $query->getSingleScalarResult();
        } catch (NoResultException | NonUniqueResultException $e) {
            return 0;
        }
    }
}
