<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * ExpUsl
 *
 * @ORM\Table(name="exp_view_usl", uniqueConstraints={@ORM\UniqueConstraint(name="exp_nom_id_uindex", columns={"id"})})
 * @ORM\Entity
 */
class ExpUsl
{
    /**
     * @var string
     *
     * @ORM\Column(name="id", type="decimal", precision=10, scale=0, nullable=false)
     *
     * @ORM\GeneratedValue(strategy="SEQUENCE")
     * @ORM\SequenceGenerator(sequenceName="exp_usl_id_seq", allocationSize=1, initialValue=1)
     */
    private $id;

    /**
     * @var string|null
     * @ORM\Id
     * @ORM\Column(name="usl_code", type="string", length=20, nullable=true)
     */
    private $uslCode;

    /**
     * @var string|null
     *
     * @ORM\Column(name="name", type="string", length=300, nullable=true)
     */
    private $name;

    /**
     * @var string|null
     *
     * @ORM\Column(name="rel", type="decimal", precision=10, scale=0, nullable=true)
     */
    private $rel;

    public function getId(): ?string
    {
        return $this->id;
    }

    public function getUslCode(): ?string
    {
        return $this->uslCode;
    }

    public function setUslCode(?string $uslCode): self
    {
        $this->uslCode = $uslCode;

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

    public function getRel(): ?string
    {
        return $this->rel;
    }

    public function setRel(?string $rel): self
    {
        $this->rel = $rel;

        return $this;
    }


}
