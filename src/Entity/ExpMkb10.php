<?php

namespace App\Entity;

use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
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
     *
     * @ORM\GeneratedValue(strategy="SEQUENCE")
     * @ORM\SequenceGenerator(sequenceName="exp_mkb10_id_seq", allocationSize=1, initialValue=1)
     */
    private $id;

    /**
     * @var string|null
     * @ORM\Id
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

    /**
     * @var
     * @ORM\OneToMany(targetEntity="ExpSluch", mappedBy="mkb")
     */
    private $sluch;

    public function __construct()
    {
        $this->sluch = new ArrayCollection();
    }

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

    public function setId(int $id): self
    {
        $this->id = $id;

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
            $sluch->setMkb($this);
        }

        return $this;
    }

    public function removeSluch(ExpSluch $sluch): self
    {
        if ($this->sluch->removeElement($sluch)) {
            // set the owning side to null (unless already changed)
            if ($sluch->getMkb() === $this) {
                $sluch->setMkb(null);
            }
        }

        return $this;
    }


}
