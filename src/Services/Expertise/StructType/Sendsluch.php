<?php

namespace App\Services\Expertise\StructType;

/**
 * This class stands for sendsluch StructType
 * Meta informations extracted from the WSDL
 * - type: tns:sendsluch
 * @subpackage Structs
 */
class Sendsluch
{
    /**
     * The sluch
     * Meta informations extracted from the WSDL
     * - maxOccurs: unbounded
     * - minOccurs: 1
     * @var Sluch[]
     */
    public $sluch;

    /**
     * Get sluch value
     * @return Sluch[]
     */
    public function getSluch()
    {
        if (!empty($this->sluch) && !is_array($this->sluch)) {
            $this->sluch = [$this->sluch];
        }
        return $this->sluch;
    }

    /**
     * Set sluch value
     * @param Sluch[] $sluch
     * @return Sendsluch
     */
    public function setSluch(array $sluch = array())
    {
        $this->sluch = $sluch;
        return $this;
    }

    /**
     * Add item to sluch value
     * @param Sluch $item
     * @return Sendsluch
     */
    public function addToSluch(Sluch $item)
    {
        $this->sluch[] = $item;
        return $this;
    }
}
