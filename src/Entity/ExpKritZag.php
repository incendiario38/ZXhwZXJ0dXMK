<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * ExpKritZag
 *
 * @ORM\Table(name="exp_krit_zag", uniqueConstraints={@ORM\UniqueConstraint(name="exp_krit_zag_id_uindex", columns={"id"})})
 * @ORM\Entity
 */
class ExpKritZag
{
    /**
     * @var string
     *
     * @ORM\Column(name="id", type="decimal", precision=10, scale=0, nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="SEQUENCE")
     * @ORM\SequenceGenerator(sequenceName="exp_krit_zag_id_seq", allocationSize=1, initialValue=1)
     */
    private $id;

    /**
     * @var string|null
     *
     * @ORM\Column(name="zag", type="string", length=10, nullable=true)
     */
    private $zag;

    /**
     * @var string|null
     *
     * @ORM\Column(name="krit", type="string", length=2000, nullable=true)
     */
    private $krit;

    /**
     * @var string|null
     *
     * @ORM\Column(name="vid", type="string", length=100, nullable=true)
     */
    private $vid;

    /**
     * @var string|null
     *
     * @ORM\Column(name="mkb", type="string", length=200, nullable=true)
     */
    private $mkb;

    /**
     * @var string|null
     *
     * @ORM\Column(name="typ", type="string", length=200, nullable=true)
     */
    private $typ;

    /**
     * @var string|null
     *
     * @ORM\Column(name="vz", type="string", length=5, nullable=true)
     */
    private $vz;

    /**
     * @var string|null
     *
     * @ORM\Column(name="st1", type="string", length=20, nullable=true)
     */
    private $st1;



    /**
     * @return mixed
     */
    public function getPhase()
    {
        return $this->phase;
    }

    /**
     * @param mixed $phase

     */
    public function setPhase($phase)
    {
        $this->phase = $phase;

        return $this;
    }

    /**
     * @ORM\Column(name="phase", type="integer")
     */
    private $phase;

    public function getId(): ?string
    {
        return $this->id;
    }

    public function getZag(): ?string
    {
        return $this->zag;
    }

    public function setZag(?string $zag): self
    {
        $this->zag = $zag;

        return $this;
    }

    public function getKrit(): ?string
    {
        return $this->krit;
    }

    public function setKrit(?string $krit): self
    {
        $this->krit = $krit;

        return $this;
    }

    public function getVid(): ?string
    {
        return $this->vid;
    }

    public function setVid(?string $vid): self
    {
        $this->vid = $vid;

        return $this;
    }

    public function getMkb(): ?string
    {
        return $this->mkb;
    }

    public function setMkb(?string $mkb): self
    {
        $this->mkb = $mkb;

        return $this;
    }

    public function getTyp(): ?string
    {
        return $this->typ;
    }

    public function setTyp(?string $typ): self
    {
        $this->typ = $typ;

        return $this;
    }

    public function getVz(): ?string
    {
        return $this->vz;
    }

    public function setVz(?string $vz): self
    {
        $this->vz = $vz;

        return $this;
    }

    public function getSt1(): ?string
    {
        return $this->st1;
    }

    public function setSt1(?string $st1): self
    {
        $this->st1 = $st1;

        return $this;
    }


}
