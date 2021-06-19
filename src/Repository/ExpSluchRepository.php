<?php


namespace App\Repository;


use Doctrine\ORM\EntityManager;
use Doctrine\ORM\EntityRepository;

class ExpSluchRepository extends EntityRepository
{
    /**
     * @param $sluchId
     * @return bool
     * @throws \Doctrine\DBAL\Exception
     */
    public function runProcedureCheckData($sluchId)
    {
        /** @var EntityManager $em */
        $em = $this->getEntityManager();
        $connection = $em->getConnection();

        $statement = $connection->executeQuery('do $$ begin call check_data(sluch_id := '.$sluchId.'); end $$');

        return true;
    }
}