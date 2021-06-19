<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * ExpStd
 *
 * @ORM\Table(name="exp_std")
 * @ORM\Entity
 */
class ExpStd
{
    /**
     * @var int
     *
     * @ORM\Column(name="id_std", type="integer", nullable=false)
     * @ORM\Id
     */
    private $id;

    /**
     * @var string|null
     *
     * @ORM\Column(name="std", type="string", length=400, nullable=true, options={"comment"="Наименование стандарта"})
     */
    private $std;


    /**
     * @var string|null
     *
     * @ORM\Column(name="vz_kat", type="string", length=10, nullable=true, options={"comment"="Возростная категория"})
     */
    private $vzKat;

    /**
     * @var string|null
     *
     * @ORM\Column(name="prikaz", type="string", length=200, nullable=true, options={"comment"="Приказ"})
     */
    private $prikaz;

    /**
     * @var string|null
     *
     * @ORM\Column(name="phase", type="string", length=10, nullable=true, options={"comment"="Фаза"})
     */
    private $faza;

    /**
     * @var string|null
     *
     * @ORM\Column(name="doc", type="string", length=10, nullable=true, options={"comment"="Фаза"})
     */
    private $doc;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getStd(): ?string
    {
        return $this->std;
    }

    public function setStd(?string $std): self
    {
        $this->std = $std;

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

    public function getVzKat(): ?string
    {
        return $this->vzKat;
    }

    public function setVzKat(?string $vzKat): self
    {
        $this->vzKat = $vzKat;

        return $this;
    }

    public function getPrikaz(): ?string
    {
        return $this->prikaz;
    }

    public function setPrikaz(?string $prikaz): self
    {
        $this->prikaz = $prikaz;

        return $this;
    }

    public function getFaza(): ?string
    {
        return $this->faza;
    }

    public function setFaza(?string $faza): self
    {
        $this->faza = $faza;

        return $this;
    }

    public function getIdStd(): ?int
    {
        return $this->idStd;
    }

    public function setIdStd(?int $idStd): self
    {
        $this->idStd = $idStd;

        return $this;
    }

    /**
     * @return string|null
     */
    public function getDoc(): ?string
    {
        return $this->doc;
    }

    /**
     * @param string|null $doc
     *
     * @return ExpStd
     */
    public function setDoc(?string $doc): ExpStd
    {
        $this->doc = $doc;

        return $this;
    }




}
