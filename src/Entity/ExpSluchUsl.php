<?php

namespace App\Entity;

use DateTime;
use DateTimeInterface;
use Doctrine\ORM\Mapping as ORM;

/**
 * ExpSluchUsl
 *
 * @ORM\Table(name="exp_sluch_usl", uniqueConstraints={@ORM\UniqueConstraint(name="exp_sluch_usl_id_uindex", columns={"id"})})
 * @ORM\Entity
 */
class ExpSluchUsl
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="SEQUENCE")
     * @ORM\SequenceGenerator(sequenceName="exp_sluch_usl_id_seq", allocationSize=1, initialValue=1)
     */
    private $id;

    /**
     * @var int|null
     *
     * @ORM\Column(name="id_sluch", type="integer", nullable=true)
     */
    private $idSluch;

    /**
     * @var string|null
     *
     * @ORM\Column(name="usl_code", type="string", length=255, nullable=true)
     */
    private $uslCode;

    /**
     * @var DateTime|null
     *
     * @ORM\Column(name="date_usl", type="datetime", nullable=true)
     */
    private $dateUsl;

    public function getId(): ?int
    {
        return $this->id;
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

    public function getUslCode(): ?string
    {
        return $this->uslCode;
    }

    public function setUslCode(?string $uslCode): self
    {
        $this->uslCode = $uslCode;

        return $this;
    }

    public function getDateUsl(): ?DateTimeInterface
    {
        return $this->dateUsl;
    }

    public function setDateUsl(?DateTimeInterface $dateUsl): self
    {
        $this->dateUsl = $dateUsl;

        return $this;
    }


}
