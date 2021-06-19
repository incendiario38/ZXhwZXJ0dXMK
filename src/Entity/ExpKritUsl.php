<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * ExpKritUsl
 *
 * @ORM\Table(name="exp_krit_usl", uniqueConstraints={@ORM\UniqueConstraint(name="exp_krit_usl_id_uindex", columns={"id"})}, indexes={@ORM\Index(name="exp_krit_usl_id_std_usl_index", columns={"id_std_usl"}), @ORM\Index(name="IDX_80FAB285F2616AE9", columns={"id_krit"})})
 * @ORM\Entity
 */
class ExpKritUsl
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="SEQUENCE")
     * @ORM\SequenceGenerator(sequenceName="exp_krit_usl_id_seq", allocationSize=1, initialValue=1)
     */
    private $id;

    /**
     * @var int|null
     *
     * @ORM\Column(name="period", type="integer", nullable=true)
     */
    private $period;

    /**
     * @var ExpKritStr
     *
     * @ORM\ManyToOne(targetEntity="ExpKritStr")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="id_krit", referencedColumnName="id")
     * })
     */
    private $idKrit;

    /**
     * @var ExpStdUsl
     *
     * @ORM\ManyToOne(targetEntity="ExpStdUsl")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="id_std_usl", referencedColumnName="id")
     * })
     */
    private $idStdUsl;

    public function getId(): ?int
    {
        return $this->id;
    }


    public function getPeriod(): ?int
    {
        return $this->period;
    }

    public function setPeriod(?int $period): self
    {
        $this->period = $period;

        return $this;
    }

    public function getIdKrit(): ?ExpKritStr
    {
        return $this->idKrit;
    }

    public function setIdKrit(?ExpKritStr $idKrit): self
    {
        $this->idKrit = $idKrit;

        return $this;
    }

    public function getIdStdUsl(): ?ExpStdUsl
    {
        return $this->idStdUsl;
    }

    public function setIdStdUsl(?ExpStdUsl $idStdUsl): self
    {
        $this->idStdUsl = $idStdUsl;

        return $this;
    }


}
