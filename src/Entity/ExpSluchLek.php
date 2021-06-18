<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * ExpSluchLek
 *
 * @ORM\Table(name="exp_sluch_lek", uniqueConstraints={@ORM\UniqueConstraint(name="exp_sluch_lek_id_uindex", columns={"id"})})
 * @ORM\Entity
 */
class ExpSluchLek
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="SEQUENCE")
     * @ORM\SequenceGenerator(sequenceName="exp_sluch_lek_id_seq", allocationSize=1, initialValue=1)
     */
    private $id;

    /**
     * @var string|null
     *
     * @ORM\Column(name="lek_name", type="string", length=255, nullable=true)
     */
    private $lekName;

    /**
     * @var int|null
     *
     * @ORM\Column(name="id_sluch", type="integer", nullable=true)
     */
    private $idSluch;

    /**
     * @var int|null
     *
     * @ORM\Column(name="status", type="integer", nullable=true)
     */
    private $status;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getLekName(): ?string
    {
        return $this->lekName;
    }

    public function setLekName(?string $lekName): self
    {
        $this->lekName = $lekName;

        return $this;
    }

    public function getIdSluch(): ?int
    {
        return $this->idSluch;
    }

    public function setIdSluch(?int $idSluch): self
    {
        $this->idSluch = $idSluch;

        return $this;
    }

    public function getStatus(): ?int
    {
        return $this->status;
    }

    public function setStatus(?int $status): self
    {
        $this->status = $status;

        return $this;
    }


}