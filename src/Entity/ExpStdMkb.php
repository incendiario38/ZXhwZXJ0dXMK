<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * ExpStd
 *
 * @ORM\Table(name="exp_std_mkb")
 * @ORM\Entity
 */
class ExpStdMkb
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer", nullable=false)
     * @ORM\Id
     */
    private $id;

    /**
     * @var string|null
     *
     * @ORM\Column(name="id_std", type="integer")
     */
    private $std;

    /**
     * @var string|null
     *
     * @ORM\Column(name="mkb", type="string", length=200, nullable=true, options={"comment"="Диагноз"})
     */
    private $mkb;

    /**
     * @var string|null
     *
     * @ORM\Column(name="kod_mkb", type="string")
     */
    private $kodMkb;

    /**
     * @return int
     */
    public function getId(): int
    {
        return $this->id;
    }

    /**
     * @param int $id
     *
     * @return ExpStd
     */
    public function setId(int $id): ExpStd
    {
        $this->id = $id;

        return $this;
    }

    /**
     * @return string|null
     */
    public function getStd(): ?string
    {
        return $this->std;
    }

    /**
     * @param string|null $std
     *
     * @return ExpStd
     */
    public function setStd(?string $std): ExpStd
    {
        $this->std = $std;

        return $this;
    }

    /**
     * @return string|null
     */
    public function getMkb(): ?string
    {
        return $this->mkb;
    }

    /**
     * @param string|null $mkb
     *
     * @return ExpStd
     */
    public function setMkb(?string $mkb): ExpStd
    {
        $this->mkb = $mkb;

        return $this;
    }

    /**
     * @return string|null
     */
    public function getKodMkb(): ?string
    {
        return $this->kodMkb;
    }

    /**
     * @param string|null $kodMkb
     *
     * @return ExpStd
     */
    public function setKodMkb(?string $kodMkb): ExpStd
    {
        $this->kodMkb = $kodMkb;

        return $this;
    }
}
