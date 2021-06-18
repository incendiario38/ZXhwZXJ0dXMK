<?php

namespace App\Entity;

use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

/**
 * ExpLpu
 *
 * @ORM\Table(name="exp_lpu", uniqueConstraints={@ORM\UniqueConstraint(name="exp_lpu_lpu_id_uindex", columns={"lpu_id"})})
 * @ORM\Entity
 */
class ExpLpu
{
    /**
     * @var int
     *
     * @ORM\Column(name="lpu_id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="SEQUENCE")
     * @ORM\SequenceGenerator(sequenceName="exp_lpu_lpu_id_seq", allocationSize=1, initialValue=1)
     */
    private $lpuId;

    /**
     * @var string|null
     *
     * @ORM\Column(name="name", type="string", length=200, nullable=true)
     */
    private $name;

    /**
     * @var
     * @ORM\OneToMany(targetEntity="ExpPatient", mappedBy="lpu")
     */
    private $patient;

    /**
     * @var
     * @ORM\OneToMany(targetEntity="ExpVrach", mappedBy="lpu")
     */
    private $vrach;

    public function __construct()
    {
        $this->patient = new ArrayCollection();
        $this->vrach = new ArrayCollection();
    }

    public function getLpuId(): ?int
    {
        return $this->lpuId;
    }

    public function getName(): ?string
    {
        return $this->name;
    }

    public function setName(?string $name): self
    {
        $this->name = $name;

        return $this;
    }

    /**
     * @return Collection|ExpPatient[]
     */
    public function getPatient(): Collection
    {
        return $this->patient;
    }

    public function addPatient(ExpPatient $patient): self
    {
        if (!$this->patient->contains($patient)) {
            $this->patient[] = $patient;
            $patient->setLpu($this);
        }

        return $this;
    }

    public function removePatient(ExpPatient $patient): self
    {
        if ($this->patient->removeElement($patient)) {
            // set the owning side to null (unless already changed)
            if ($patient->getLpu() === $this) {
                $patient->setLpu(null);
            }
        }

        return $this;
    }

    /**
     * @return Collection|ExpVrach[]
     */
    public function getVrach(): Collection
    {
        return $this->vrach;
    }

    public function addVrach(ExpVrach $vrach): self
    {
        if (!$this->vrach->contains($vrach)) {
            $this->vrach[] = $vrach;
            $vrach->setLpu($this);
        }

        return $this;
    }

    public function removeVrach(ExpVrach $vrach): self
    {
        if ($this->vrach->removeElement($vrach)) {
            // set the owning side to null (unless already changed)
            if ($vrach->getLpu() === $this) {
                $vrach->setLpu(null);
            }
        }

        return $this;
    }


}
