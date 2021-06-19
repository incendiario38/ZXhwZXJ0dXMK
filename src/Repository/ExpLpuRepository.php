<?php


namespace App\Repository;


use Doctrine\ORM\EntityRepository;
use Doctrine\ORM\Query\ResultSetMapping;

class ExpLpuRepository extends EntityRepository
{
    public function getCtatByMu()
    {
        $sql = "SELECT l.lpu_id,
                   l.name,
                   (Select round(300 / l.lpu_id)) AS m1,
                   (Select round(200 / l.lpu_id)) AS m2,
                   (Select round(400 / (l.lpu_id ))) AS m3,
                   (Select round(300 / l.lpu_id)) AS m4,
                   (Select round(400 / l.lpu_id)) AS m5,
                   (Select round(150 / l.lpu_id)) AS m6
            FROM exp_lpu l ORDER BY lpu_id DESC limit 7";

        $rsm = new ResultSetMapping();
        $rsm->addScalarResult('lpu_id', 'lpu_id');
        $rsm->addScalarResult('name', 'name');
        $rsm->addScalarResult('m1', 'm1');
        $rsm->addScalarResult('m2', 'm2');
        $rsm->addScalarResult('m3', 'm3');
        $rsm->addScalarResult('m4', 'm4');
        $rsm->addScalarResult('m5', 'm5');
        $rsm->addScalarResult('m6', 'm6');

        $query = $this->getEntityManager()->createNativeQuery($sql, $rsm);

        return $query->getArrayResult();
    }
}