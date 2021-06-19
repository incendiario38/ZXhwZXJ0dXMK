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
           WHEN t.forma = 2 THEN 'Экстренная'
           WHEN t.forma = 3 THEN 'Неотложная'
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
       t.status,
       t.krit_zag,
       CASE
           WHEN p.w = 1 then
               'Мужской'
           WHEN p.w = 0 then
               'Женский'
           else
               'Не заполнен'
           end as w,
       p.enp,
       (select std || ' - ' || prikaz from exp_std where id_std = t.id_std) std
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
        $rsm->addScalarResult('status', 'status');
        $rsm->addScalarResult('krit_zag', 'krit_zag');
        $rsm->addScalarResult('std', 'std');

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

    public function getExpSluchById(int $id): array
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
       t.status,
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
where t.id = :id 
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
        $rsm->addScalarResult('status', 'status');

        $query = $this->getEntityManager()->createNativeQuery($sql, $rsm);
        $query->setParameter('id', $id);

        return $query->getSingleResult();
    }

    public function getExpertBySluch(int $id): array
    {
        $sql = <<<SQL
select vid, check_all
  from exp_view_usl_check t
where id = :id
SQL;

        $rsm = new ResultSetMapping();
        $rsm->addScalarResult('vid', 'vid');
        $rsm->addScalarResult('check_usl', 'check_usl');
        $rsm->addScalarResult('check_lek', 'check_lek');
        $rsm->addScalarResult('check_all', 'check_all');

        $query = $this->getEntityManager()->createNativeQuery($sql, $rsm);
        $query->setParameter('id', $id);

        return $query->getArrayResult();
    }

    public function getUslBySluch(int $id): array
    {
        $sql = <<<SQL
select exp_sluch_usl.usl_code, exp_usl.name
from exp_sluch
    join exp_sluch_usl on exp_sluch.id = exp_sluch_usl.id_sluch
join exp_usl on exp_usl.usl_code = exp_sluch_usl.usl_code

where exp_sluch.id = :id and exp_sluch.status = 2
  and exp_sluch_usl.krit_zag is null and exp_sluch_usl.krit_str is null
SQL;

        $rsm = new ResultSetMapping();
        $rsm->addScalarResult('usl_code', 'usl_code');
        $rsm->addScalarResult('name', 'name');

        $query = $this->getEntityManager()->createNativeQuery($sql, $rsm);
        $query->setParameter('id', $id);

        return $query->getArrayResult();
    }

    public function getLekBySluch(int $id): array
    {
        $sql = <<<SQL
select exp_sluch_lek.lek_name
  from exp_sluch join exp_sluch_lek on exp_sluch.id = exp_sluch_lek.id_sluch
 where exp_sluch.id = :id and exp_sluch.status = 2 
   and exp_sluch_lek.krit_zag is null and exp_sluch_lek.krit_str is null
SQL;

        $rsm = new ResultSetMapping();
        $rsm->addScalarResult('lek_name', 'lek_name');

        $query = $this->getEntityManager()->createNativeQuery($sql, $rsm);
        $query->setParameter('id', $id);

        return $query->getArrayResult();
    }
}
