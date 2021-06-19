<?php

namespace App\Services\Expertise\StructType;

/**
 * This class stands for result StructType
 * Meta informations extracted from the WSDL
 * - type: tns:result
 * @subpackage Structs
 */
class Result
{
    /**
     * The status
     * Meta informations extracted from the WSDL
     * - maxOccurs: 1
     * - minOccurs: 1
     * @var string
     */
    public $status;

    /**
     * Get status value
     * @return string
     */
    public function getStatus()
    {
        return $this->status;
    }

    /**
     * Set status value
     * @param string $status
     * @return Result
     */
    public function setStatus($status = null)
    {
        $this->status = $status;
        return $this;
    }
}
