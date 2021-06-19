<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * ExpKritLek
 *
 * @ORM\Table(name="exp_krit_lek", uniqueConstraints={@ORM\UniqueConstraint(name="exp_krit_lek_id_uindex", columns={"id"})}, indexes={@ORM\Index(name="exp_krit_lek_id_std_prep_index", columns={"id_std_prep"}), @ORM\Index(name="IDX_11F10A0EF2616AE9", columns={"id_krit"})})
 * @ORM\Entity
 */
class ExpKritLek
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="SEQUENCE")
     * @ORM\SequenceGenerator(sequenceName="exp_krit_lek_id_seq", allocationSize=1, initialValue=1)
     */
    private $id;

    /**
     * @var int|null
     *
     * @ORM\Column(name="id_std_prep", type="integer", nullable=true)
     */
    private $idStdPrep;

    /**
     * @var ExpKritStr
     *
     * @ORM\ManyToOne(targetEntity="ExpKritStr")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="id_krit", referencedColumnName="id")
     * })
     */
    private $idKrit;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getIdStdPrep(): ?int
    {
        return $this->idStdPrep;
    }

    public function setIdStdPrep(?int $idStdPrep): self
    {
        $this->idStdPrep = $idStdPrep;

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
}
