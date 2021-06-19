<?php

namespace App\Services\Expertise\StructType;

use DateTime;

/**
 * This class stands for uslItem StructType
 * @subpackage Structs
 */
class UslItem
{
    /**
     * The id
     * Meta informations extracted from the WSDL
     * - documentation: Идентификатор услуги
     * - maxOccurs: 1
     * - minOccurs: 1
     * @var int
     */
    public $id;
    /**
     * The dateUsl
     * Meta informations extracted from the WSDL
     * - documentation: Идентификатор услуги
     * - maxOccurs: 1
     * - minOccurs: 1
     * @var string
     */
    public $dateUsl;

    /**
     * Get id value
     * @return int
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set id value
     * @param int $id
     * @return UslItem
     */
    public function setId($id = null)
    {
        $this->id = $id;
        return $this;
    }

    /**
     * Get dateUsl value
     * @return string
     */
    public function getDateUsl()
    {
        return new DateTime($this->dateUsl);
    }

    /**
     * Set dateUsl value
     * @param string $dateUsl
     * @return UslItem
     */
    public function setDateUsl($dateUsl = null)
    {
        $this->dateUsl = $dateUsl;
        return $this;
    }
}
