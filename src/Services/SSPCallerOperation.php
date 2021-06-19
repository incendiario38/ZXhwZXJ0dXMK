<?php

namespace App\Services;


use App\Services\Expertise\StructType\Sendsluch;
use Exception;
use Psr\Container\ContainerInterface;
use SoapFault;

/**
 * Единый сервис для вызова операций сервисов single-start operations (SSP)
 */
class SSPCallerOperation
{
    private $container;

    /**
     * SSPCallerOperation constructor.
     */
    public function __construct(ContainerInterface $container)
    {
        $this->container = $container;
    }

    public function __call($name, $arguments)
    {
        try {
            $result = null;
            if (isset($arguments[0])) {
                if ($arguments[0] instanceof Sendsluch) {
                    $requestObject = $arguments[0];
                    $operationObject = new Expertise\ServiceType\Sendsluch($this);
                    $result = $operationObject->run($requestObject);
                }
            }
            return $result;

        } catch (Exception $e) {
            throw new SoapFault('Receiver', $e->getMessage());
        }
    }

    /**
     * Запись массива замапленных операций
     * @param array $operationsMap
     * @return $this
     */
    public function setOperationsMap(array $operationsMap)
    {
        $this->operationsMap = $operationsMap;

        return $this;
    }

    /**
     * @return ContainerInterface
     */
    public function getContainer(): ContainerInterface
    {
        return $this->container;
    }


}