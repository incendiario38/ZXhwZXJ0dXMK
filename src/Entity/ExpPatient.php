<?php

namespace App\Entity;

use DateTime;
use DateTimeInterface;
use Doctrine\ORM\Mapping as ORM;

/**
 * ExpPatient
 *
 * @ORM\Table(name="exp_patient")
 * @ORM\Entity
 */
class ExpPatient
{
    /**
     * @var int
     *
     * @ORM\Column(name="id_pers", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="SEQUENCE")
     * @ORM\SequenceGenerator(sequenceName="exp_patient_id_pers_seq", allocationSize=1, initialValue=1)
     */
    private $idPers;

    /**
     * @var string|null
     *
     * @ORM\Column(name="fam", type="string", nullable=true)
     */
    private $fam;

    /**
     * @var string|null
     *
     * @ORM\Column(name="im", type="string", nullable=true)
     */
    private $im;

    /**
     * @var string|null
     *
     * @ORM\Column(name="ot", type="string", nullable=true)
     */
    private $ot;

    /**
     * @var DateTime|null
     *
     * @ORM\Column(name="dr", type="date", nullable=true)
     */
    private $dr;

    /**
     * @var string|null
     *
     * @ORM\Column(name="mr", type="string", nullable=true)
     */
    private $mr;

    /**
     * @var int|null
     *
     * @ORM\Column(name="w", type="integer", nullable=true)
     */
    private $w;

    /**
     * @var string|null
     *
     * @ORM\Column(name="enp", type="string", nullable=true)
     */
    private $enp;

    public function getIdPers(): ?int
    {
        return $this->idPers;
    }

    public function getFam(): ?string
    {
        return $this->fam;
    }

    public function setFam(?string $fam): self
    {
        $this->fam = $fam;

        return $this;
    }

    public function getIm(): ?string
    {
        return $this->im;
    }

    public function setIm(?string $im): self
    {
        $this->im = $im;

        return $this;
    }

    public function getOt(): ?string
    {
        return $this->ot;
    }

    public function setOt(?string $ot): self
    {
        $this->ot = $ot;

        return $this;
    }

    public function getDr(): ?DateTimeInterface
    {
        return $this->dr;
    }

    public function setDr(?DateTimeInterface $dr): self
    {
        $this->dr = $dr;

        return $this;
    }

    public function getMr(): ?string
    {
        return $this->mr;
    }

    public function setMr(?string $mr): self
    {
        $this->mr = $mr;

        return $this;
    }

    public function getW(): ?int
    {
        return $this->w;
    }

    public function setW(?int $w): self
    {
        $this->w = $w;

        return $this;
    }

    public function getEnp(): ?string
    {
        return $this->enp;
    }

    public function setEnp(?string $enp): self
    {
        $this->enp = $enp;

        return $this;
    }


}
