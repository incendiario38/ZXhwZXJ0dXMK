<?php

namespace App\Services\Expertise\StructType;

use InvalidArgumentException;

class LekCollection
{
    /**
     * The lek
     * Meta informations extracted from the WSDL
     * - documentation: Оказанная медицинская услуга
     * - maxOccurs: unbounded
     * - minOccurs: 1
     * @var LekItem[]
     */
    public $lek;

    /**
     * Get lek value
     * @return LekItem[]
     */
    public function getLek()
    {
        if (!empty($this->lek) && !is_array($this->lek)) {
            $this->lek = [$this->lek];
        }
        return $this->lek;
    }

    /**
     * Set lek value
     * @param LekItem[] $lek
     * @return LekCollection
     * @throws InvalidArgumentException
     */
    public function setLek(array $lek = array())
    {
        $this->lek = $lek;
        return $this;
    }

    /**
     * Add item to lek value
     * @param LekItem $item
     * @return LekCollection
     * @throws InvalidArgumentException
     */
    public function addToLek(LekItem $item)
    {
        $this->lek[] = $item;
        return $this;
    }
}
