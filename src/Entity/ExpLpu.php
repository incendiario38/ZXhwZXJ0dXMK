<?php

namespace App\Entity;

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


}
