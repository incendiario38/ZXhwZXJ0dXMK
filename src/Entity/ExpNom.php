<?php

namespace App\Entity;

use DateTime;
use DateTimeInterface;
use Doctrine\ORM\Mapping as ORM;

/**
 * ExpNom
 *
 * @ORM\Table(name="exp_nom", uniqueConstraints={@ORM\UniqueConstraint(name="exp_nom_id_uindex3", columns={"id"})})
 * @ORM\Entity
 */
class ExpNom
{
    /**
     * @var string
     *
     * @ORM\Column(name="id", type="decimal", precision=10, scale=0, nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="SEQUENCE")
     * @ORM\SequenceGenerator(sequenceName="exp_nom_id_seq", allocationSize=1, initialValue=1)
     */
    private $id;

    /**
     * @var string|null
     *
     * @ORM\Column(name="s_code", type="string", length=20, nullable=true, options={"comment"="Код услуги"})
     */
    private $sCode;

    /**
     * @var string|null
     *
     * @ORM\Column(name="name", type="string", length=300, nullable=true, options={"comment"="Полное название"})
     */
    private $name;

    /**
     * @var string|null
     *
     * @ORM\Column(name="rel", type="decimal", precision=10, scale=0, nullable=true, options={"comment"="Признак актуальности"})
     */
    private $rel;

    /**
     * @var DateTime|null
     *
     * @ORM\Column(name="dateout", type="datetime", nullable=true, options={"comment"="Дата упразднения"})
     */
    private $dateout;

    public function getId(): ?string
    {
        return $this->id;
    }

    public function getSCode(): ?string
    {
        return $this->sCode;
    }

    public function setSCode(?string $sCode): self
    {
        $this->sCode = $sCode;

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

    public function getDateout(): ?DateTimeInterface
    {
        return $this->dateout;
    }

    public function setDateout(?DateTimeInterface $dateout): self
    {
        $this->dateout = $dateout;

        return $this;
    }


}
