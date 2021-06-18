<?php

declare(strict_types=1);

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity()
 * @ORM\Table(name="exp_patient")
 */
class ExtPatient
{
    /**
     * @ORM\Column(name="id_pers", type="integer")
     * @ORM\Id
     */
    private int $id;

    /**
     * @ORM\Column(name="fam", type="string")
     */
    private string $fam;

    /**
     * @ORM\Column(name="im", type="string")
     */
    private string $im;

    /**
     * @ORM\Column(name="ot", type="string")
     */
    private string $ot;

    /**
     * @ORM\Column(name="dr", type="date")
     */
    private \DateTime $dr;

    /**
     * @ORM\Column(name="mr", type="string")
     */
    private string $mr;

    /**
     * @ORM\Column(name="w", type="integer")
     */
    private int $w;


    /**
     * @ORM\Column(name="enp", type="string")
     */
    private string $enp;

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
     * @return ExtPatient
     */
    public function setId(int $id): ExtPatient
    {
        $this->id = $id;

        return $this;
    }

    /**
     * @return string
     */
    public function getFam(): string
    {
        return $this->fam;
    }

    /**
     * @param string $fam
     *
     * @return ExtPatient
     */
    public function setFam(string $fam): ExtPatient
    {
        $this->fam = $fam;

        return $this;
    }

    /**
     * @return string
     */
    public function getIm(): string
    {
        return $this->im;
    }

    /**
     * @param string $im
     *
     * @return ExtPatient
     */
    public function setIm(string $im): ExtPatient
    {
        $this->im = $im;

        return $this;
    }

    /**
     * @return string
     */
    public function getOt(): string
    {
        return $this->ot;
    }

    /**
     * @param string $ot
     *
     * @return ExtPatient
     */
    public function setOt(string $ot): ExtPatient
    {
        $this->ot = $ot;

        return $this;
    }

    /**
     * @return \DateTime
     */
    public function getDr(): \DateTime
    {
        return $this->dr;
    }

    /**
     * @param \DateTime $dr
     *
     * @return ExtPatient
     */
    public function setDr(\DateTime $dr): ExtPatient
    {
        $this->dr = $dr;

        return $this;
    }

    /**
     * @return string
     */
    public function getMr(): string
    {
        return $this->mr;
    }

    /**
     * @param string $mr
     *
     * @return ExtPatient
     */
    public function setMr(string $mr): ExtPatient
    {
        $this->mr = $mr;

        return $this;
    }

    /**
     * @return int
     */
    public function getW(): int
    {
        return $this->w;
    }

    /**
     * @param int $w
     *
     * @return ExtPatient
     */
    public function setW(int $w): ExtPatient
    {
        $this->w = $w;

        return $this;
    }

    /**
     * @return string
     */
    public function getEnp(): string
    {
        return $this->enp;
    }

    /**
     * @param string $enp
     *
     * @return ExtPatient
     */
    public function setEnp(string $enp): ExtPatient
    {
        $this->enp = $enp;

        return $this;
    }
}
