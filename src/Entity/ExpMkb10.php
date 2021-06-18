<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * ExpMkb10
 *
 * @ORM\Table(name="exp_mkb10", uniqueConstraints={@ORM\UniqueConstraint(name="exp_mkb10_id_uindex", columns={"id"})})
 * @ORM\Entity
 */
class ExpMkb10
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="SEQUENCE")
     * @ORM\SequenceGenerator(sequenceName="exp_mkb10_id_seq", allocationSize=1, initialValue=1)
     */
    private $id;

    /**
     * @var string|null
     *
     * @ORM\Column(name="kodmkb", type="string", length=10, nullable=true)
     */
    private $kodmkb;

    /**
     * @var string|null
     *
     * @ORM\Column(name="name_sh", type="string", length=100, nullable=true)
     */
    private $nameSh;

    /**
     * @var string|null
     *
     * @ORM\Column(name="name_mkb10", type="string", length=250, nullable=true)
     */
    private $nameMkb10;

    /**
     * @var int|null
     *
     * @ORM\Column(name="enable", type="integer", nullable=true)
     */
    private $enable;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getKodmkb(): ?string
    {
        return $this->kodmkb;
    }

    public function setKodmkb(?string $kodmkb): self
    {
        $this->kodmkb = $kodmkb;

        return $this;
    }

    public function getNameSh(): ?string
    {
        return $this->nameSh;
    }

    public function setNameSh(?string $nameSh): self
    {
        $this->nameSh = $nameSh;

        return $this;
    }

    public function getNameMkb10(): ?string
    {
        return $this->nameMkb10;
    }

    public function setNameMkb10(?string $nameMkb10): self
    {
        $this->nameMkb10 = $nameMkb10;

        return $this;
    }

    public function getEnable(): ?int
    {
        return $this->enable;
    }

    public function setEnable(?int $enable): self
    {
        $this->enable = $enable;

        return $this;
    }


}
