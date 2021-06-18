<?php

namespace App\Entity;

use DateTime;
use DateTimeInterface;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
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

    /**
     * @var
     * @ORM\OneToMany(targetEntity="ExpSluch",mappedBy="patient",fetch="EAGER")
     */
    private $sluch;

    /**
     * @var
     * @ORM\ManyToOne(targetEntity="ExpLpu", inversedBy="patient")
     * @ORM\JoinColumn(name="lpu_id",referencedColumnName="lpu_id")
     */
    private $lpu;

    public function __construct()
    {
        $this->sluch = new ArrayCollection();
    }

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

    /**
     * @return Collection|ExpSluch[]
     */
    public function getSluch(): Collection
    {
        return $this->sluch;
    }

    public function addSluch(ExpSluch $sluch): self
    {
        if (!$this->sluch->contains($sluch)) {
            $this->sluch[] = $sluch;
            $sluch->setPatient($this);
        }

        return $this;
    }

    public function removeSluch(ExpSluch $sluch): self
    {
        if ($this->sluch->removeElement($sluch)) {
            // set the owning side to null (unless already changed)
            if ($sluch->getPatient() === $this) {
                $sluch->setPatient(null);
            }
        }

        return $this;
    }

    public function getLpu(): ?ExpLpu
    {
        return $this->lpu;
    }

    public function setLpu(?ExpLpu $lpu): self
    {
        $this->lpu = $lpu;

        return $this;
    }


}
