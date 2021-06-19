<?php

namespace App\Services\Expertise\StructType;

class LekItem
{
    /**
     * The lekName
     * Meta informations extracted from the WSDL
     * - documentation: Наименование лекарственного
     * - maxOccurs: 1
     * - minOccurs: 1
     * @var string
     */
    public $lekName;

    /**
     * Get lekName value
     * @return string
     */
    public function getLekName()
    {
        return $this->lekName;
    }

    /**
     * Set lekName value
     * @param string $lekName
     * @return LekItem
     */
    public function setLekName($lekName = null)
    {
        $this->lekName = $lekName;
        return $this;
    }

}
