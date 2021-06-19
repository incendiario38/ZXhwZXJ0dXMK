<?php

namespace App\Repository;

use App\Entity\ExpKritZag;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\ORM\Query\ResultSetMappingBuilder;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method ExpKritZag|null find($id, $lockMode = null, $lockVersion = null)
 * @method ExpKritZag|null findOneBy(array $criteria, array $orderBy = null)
 * @method ExpKritZag[]    findAll()
 * @method ExpKritZag[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class ExpKritZagRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, ExpKritZag::class);
    }

    public function getStd(int $std): array
    {
        $rsm = new ResultSetMappingBuilder($this->_em);
        $rsm->addRootEntityFromClassMetadata(ExpKritZag::class, 't');
        $sql = <<<SQL
select {$rsm->generateSelectClause('k')} from exp_krit_zag t
where t.phase = (select phase from exp_std where id_std = :std)
  and t.vz = (select vz_kat from exp_std where id_std = :std)
  and (upper(t.mkb) like upper('%'||(select kod_mkb from exp_std_mkb order by kod_mkb limit 1)||'%') or upper(t.mkb) like upper('%'||(select SUBSTRING(kod_mkb, 0, POSITION('.' in kod_mkb)) from exp_std_mkb order by kod_mkb limit 1)||'%') )
SQL;

        return $this->getEntityManager()->createNativeQuery($sql, $rsm)->setParameters(['std' => $std])->getResult();
    }
}
