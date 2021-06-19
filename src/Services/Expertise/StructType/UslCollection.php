<?php

namespace App\Services\Expertise\StructType;

/**
 * This class stands for uslCollection StructType
 * @subpackage Structs
 */
class UslCollection
{
    /**
     * The usl
     * Meta informations extracted from the WSDL
     * - documentation: Оказанная медицинская услуга
     * - maxOccurs: unbounded
     * - minOccurs: 1
     * @var UslItem[]
     */
    public $usl;

    /**
     * Get usl value
     * @return UslItem[]
     */
    public function getUsl()
    {
        if (!empty($this->usl) && !is_array($this->usl)) {
            $this->usl = [$this->usl];
        }
        return $this->usl;
    }

    /**
     * Set usl value
     * @param UslItem[] $usl
     * @return UslCollection
     */
    public function setUsl(array $usl = array())
    {
        $this->usl = $usl;
        return $this;
    }

    /**
     * Add item to usl value
     * @param UslItem $item
     * @return UslCollection
     */
    public function addToUsl(UslItem $item)
    {
        $this->usl[] = $item;
        return $this;
    }
}
