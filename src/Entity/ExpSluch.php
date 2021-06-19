<?php

namespace App\Entity;

use DateTime;
use DateTimeInterface;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Component\Validator\Context\ExecutionContextInterface;

/**
 * ExpSluch
 *
 * @ORM\Table(name="exp_sluch", uniqueConstraints={@ORM\UniqueConstraint(name="exp_sluch_id_uindex", columns={"id"})})
 * @ORM\Entity
 * @ORM\HasLifecycleCallbacks()
 */
class ExpSluch
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="SEQUENCE")
     * @ORM\SequenceGenerator(sequenceName="exp_sluch_id_seq", allocationSize=1, initialValue=6)
     */
    private $id;

    /**
     * @var int|null
     *
     * @ORM\Column(name="lpu_id", type="integer", nullable=true)
     * @Assert\Type(type="numeric")
     */
    private $lpuId;

    /**
     * @var int|null
     *
     * @ORM\Column(name="id_vrach", type="integer", nullable=true)
     * @Assert\Type(type="numeric")
     */
    private $idVrach;

    /**
     * @var DateTime|null
     *
     * @ORM\Column(name="dbeg", type="datetime", nullable=true)
     * @Assert\NotNull()
     * @Assert\NotBlank()
     * @Assert\Type(type="\DateTime")
     */
    private $dbeg;

    /**
     * @var DateTime|null
     *
     * @ORM\Column(name="dend", type="datetime", nullable=true)
     * @Assert\NotNull()
     * @Assert\NotBlank()
     * @Assert\Type(type="\DateTime")
     */
    private $dend;

    /**
     * @var int|null
     *
     * @ORM\Column(name="usl_ok", type="integer", nullable=true)
     * @Assert\NotNull()
     * @Assert\NotBlank()
     * @Assert\Type(type="numeric")
     */
    private $uslOk = 0;

    /**
     * @var int|null
     *
     * @ORM\Column(name="forma", type="integer", nullable=true)
     * @Assert\NotNull()
     * @Assert\NotBlank()
     * @Assert\Type(type="numeric")
     */
    private $forma;

    /**
     * @var int|null
     *
     * @ORM\Column(name="phase", type="integer", nullable=true)
     * @Assert\NotNull()
     * @Assert\NotBlank()
     * @Assert\Type(type="numeric")
     */
    private $phase;

    /**
     * @var int|null
     *
     * @ORM\Column(name="stage", type="integer", nullable=true)
     * @Assert\NotNull()
     * @Assert\NotBlank()
     * @Assert\Type(type="numeric")
     */
    private $stage;

    /**
     * @var
     * @ORM\ManyToOne(targetEntity="ExpPatient", inversedBy="sluch")
     * @ORM\JoinColumn(name="id_pers",referencedColumnName="id_pers")
     */
    private $patient;

    /**
     * @var
     * @ORM\OneToMany(targetEntity="ExpSluchUsl", mappedBy="sluch", cascade={"persist", "remove"})
     */
    private $usl;

    /**
     * @var
     * @ORM\OneToMany(targetEntity="ExpSluchLek", mappedBy="sluch", cascade={"persist", "remove"})
     */
    private $lek;

    /**
     * @var
     * @ORM\ManyToOne(targetEntity="ExpVrach", inversedBy="sluch")
     * @ORM\JoinColumn(name="id_vrach",referencedColumnName="id")
     */
    private $vrach;

    /**
     * @var
     * @ORM\ManyToOne(targetEntity="ExpMkb10", inversedBy="sluch")
     * @ORM\JoinColumn(name="mkb",referencedColumnName="kodmkb")
     */
    private $mkb;

    /**
     * @var int|null
     *
     * @ORM\Column(name="n_med_card", type="integer", nullable=true)
     */
    private $nMedCard;

    public function __construct()
    {
        $this->usl = new ArrayCollection();
        $this->lek = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
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

    public function getPatient(): ?ExpPatient
    {
        return $this->patient;
    }

    public function setPatient(?ExpPatient $patient): self
    {
        $this->patient = $patient;

        return $this;
    }

    /**
     * @return Collection|ExpSluchUsl[]
     */
    public function getUsl(): Collection
    {
        return $this->usl;
    }

    public function addUsl(ExpSluchUsl $usl): self
    {
        if (!$this->usl->contains($usl)) {
            $this->usl[] = $usl;
            $usl->setSluch($this);
        }

        return $this;
    }

    public function removeUsl(ExpSluchUsl $usl): self
    {
        if ($this->usl->removeElement($usl)) {
            // set the owning side to null (unless already changed)
            if ($usl->getSluch() === $this) {
                $usl->setSluch(null);
            }
        }

        return $this;
    }

    /**
     * @return Collection|ExpSluchLek[]
     */
    public function getLek(): Collection
    {
        return $this->lek;
    }

    public function addLek(ExpSluchLek $lek): self
    {
        if (!$this->lek->contains($lek)) {
            $this->lek[] = $lek;
            $lek->setSluch($this);
        }

        return $this;
    }

    public function removeLek(ExpSluchLek $lek): self
    {
        if ($this->lek->removeElement($lek)) {
            // set the owning side to null (unless already changed)
            if ($lek->getSluch() === $this) {
                $lek->setSluch(null);
            }
        }

        return $this;
    }

    public function getVrach(): ?ExpVrach
    {
        return $this->vrach;
    }

    public function setVrach(?ExpVrach $vrach): self
    {
        $this->vrach = $vrach;

        return $this;
    }

    public function getMkb(): ?ExpMkb10
    {
        return $this->mkb;
    }

    public function setMkb(?ExpMkb10 $mkb): self
    {
        $this->mkb = $mkb;

        return $this;
    }

    /**
     * @Assert\Callback
     */
    public function validateDateDispEnd(ExecutionContextInterface $context, $payload)
    {
        if ($this->getDend() < $this->getDbeg()) {
            $context->buildViolation('Дата окончания случая лечения не может быть меньше даны начала лечения')
                ->atPath('dend')
                ->addViolation();
        }
    }

}
