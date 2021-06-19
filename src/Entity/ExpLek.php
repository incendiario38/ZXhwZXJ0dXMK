<?php

namespace App\Entity;

use DateTime;
use DateTimeInterface;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

/**
 * ExpUsl
 *
 * @ORM\Table(name="exp_view_lek", uniqueConstraints={@ORM\UniqueConstraint(name="exp_nom_id_uindex", columns={"id"})})
 * @ORM\Entity
 */
class ExpLek
{
    /**
     * @var string|null
     *
     * @ORM\Column(name="kod", type="string", length=20, nullable=true)
     */
    private $kod;

    /**
     * @var string|null
     * @ORM\Id
     * @ORM\Column(name="name", type="string", length=300, nullable=true)
     */
    private $name;

    /**
     * @ORM\OneToMany(targetEntity="ExpSluchLek", mappedBy="lekName")
     */
    private $skuchlek;

    public function __construct()
    {
        $this->skuchlek = new ArrayCollection();
    }

    public function getKod(): ?string
    {
        return $this->kod;
    }

    public function setKod(?string $kod): self
    {
        $this->kod = $kod;

        return $this;
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
     * @return Collection|ExpSluchLek[]
     */
    public function getSkuchlek(): Collection
    {
        return $this->skuchlek;
    }

    public function addSkuchlek(ExpSluchLek $skuchlek): self
    {
        if (!$this->skuchlek->contains($skuchlek)) {
            $this->skuchlek[] = $skuchlek;
            $skuchlek->setLekName($this);
        }

        return $this;
    }

    public function removeSkuchlek(ExpSluchLek $skuchlek): self
    {
        if ($this->skuchlek->removeElement($skuchlek)) {
            // set the owning side to null (unless already changed)
            if ($skuchlek->getLekName() === $this) {
                $skuchlek->setLekName(null);
            }
        }

        return $this;
    }
}
