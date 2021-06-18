<?php

namespace App\Entity;

use DateTime;
use DateTimeInterface;
use Doctrine\ORM\Mapping as ORM;

/**
 * ExpSluch
 *
 * @ORM\Table(name="exp_sluch", uniqueConstraints={@ORM\UniqueConstraint(name="exp_sluch_id_uindex", columns={"id"})})
 * @ORM\Entity
 */
class ExpSluch
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="SEQUENCE")
     * @ORM\SequenceGenerator(sequenceName="exp_sluch_id_seq", allocationSize=1, initialValue=1)
     */
    private $id;

    /**
     * @var int|null
     *
     * @ORM\Column(name="id_pers", type="integer", nullable=true)
     */
    private $idPers;

    /**
     * @var int|null
     *
     * @ORM\Column(name="lpu_id", type="integer", nullable=true)
     */
    private $lpuId;

    /**
     * @var int|null
     *
     * @ORM\Column(name="id_vrach", type="integer", nullable=true)
     */
    private $idVrach;

    /**
     * @var DateTime|null
     *
     * @ORM\Column(name="dbeg", type="datetime", nullable=true)
     */
    private $dbeg;

    /**
     * @var DateTime|null
     *
     * @ORM\Column(name="dend", type="datetime", nullable=true)
     */
    private $dend;

    /**
     * @var int|null
     *
     * @ORM\Column(name="usl_ok", type="integer", nullable=true)
     */
    private $uslOk = '0';

    /**
     * @var string|null
     *
     * @ORM\Column(name="mkb", type="string", length=10, nullable=true)
     */
    private $mkb;

    /**
     * @var int|null
     *
     * @ORM\Column(name="forma", type="integer", nullable=true)
     */
    private $forma;

    /**
     * @var int|null
     *
     * @ORM\Column(name="phase", type="integer", nullable=true)
     */
    private $phase;

    /**
     * @var int|null
     *
     * @ORM\Column(name="stage", type="integer", nullable=true)
     */
    private $stage;

    /**
     * @var int|null
     *
     * @ORM\Column(name="n_med_card", type="integer", nullable=true)
     */
    private $nMedCard;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getIdPers(): ?int
    {
        return $this->idPers;
    }

    public function setIdPers(?int $idPers): self
    {
        $this->idPers = $idPers;

        return $this;
    }

    public function getLpuId(): ?int
    {
        return $this->lpuId;
    }

    public function setLpuId(?int $lpuId): self
    {
        $this->lpuId = $lpuId;

        return $this;
    }

    public function getIdVrach(): ?int
    {
        return $this->idVrach;
    }

    public function setIdVrach(?int $idVrach): self
    {
        $this->idVrach = $idVrach;

        return $this;
    }

    public function getDbeg(): ?DateTimeInterface
    {
        return $this->dbeg;
    }

    public function setDbeg(?DateTimeInterface $dbeg): self
    {
        $this->dbeg = $dbeg;

        return $this;
    }

    public function getDend(): ?DateTimeInterface
    {
        return $this->dend;
    }

    public function setDend(?DateTimeInterface $dend): self
    {
        $this->dend = $dend;

        return $this;
    }

    public function getUslOk(): ?int
    {
        return $this->uslOk;
    }

    public function setUslOk(?int $uslOk): self
    {
        $this->uslOk = $uslOk;

        return $this;
    }

    public function getMkb(): ?string
    {
        return $this->mkb;
    }

    public function setMkb(?string $mkb): self
    {
        $this->mkb = $mkb;

        return $this;
    }

    public function getForma(): ?int
    {
        return $this->forma;
    }

    public function setForma(?int $forma): self
    {
        $this->forma = $forma;

        return $this;
    }

    public function getPhase(): ?int
    {
        return $this->phase;
    }

    public function setPhase(?int $phase): self
    {
        $this->phase = $phase;

        return $this;
    }

    public function getStage(): ?int
    {
        return $this->stage;
    }

    public function setStage(?int $stage): self
    {
        $this->stage = $stage;

        return $this;
    }

    public function getNMedCard(): ?int
    {
        return $this->nMedCard;
    }

    public function setNMedCard(?int $nMedCard): self
    {
        $this->nMedCard = $nMedCard;

        return $this;
    }


}
