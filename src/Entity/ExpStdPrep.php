<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * ExpStdPrep
 *
 * @ORM\Table(name="exp_std_prep", uniqueConstraints={@ORM\UniqueConstraint(name="exp_std_prep_id_uindex", columns={"id"})})
 * @ORM\Entity
 */
class ExpStdPrep
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="SEQUENCE")
     * @ORM\SequenceGenerator(sequenceName="exp_std_prep_id_seq", allocationSize=1, initialValue=1)
     */
    private $id;

    /**
     * @var int|null
     *
     * @ORM\Column(name="id_std", type="integer", nullable=true, options={"comment"="Номер стандарта"})
     */
    private $idStd;

    /**
     * @var string|null
     *
     * @ORM\Column(name="kod", type="string", length=10, nullable=true, options={"comment"="Код"})
     */
    private $kod;

    /**
     * @var string|null
     *
     * @ORM\Column(name="klass", type="string", length=100, nullable=true, options={"comment"="Анатомо-терапевтическо-химическая классификация"})
     */
    private $klass;

    /**
     * @var string|null
     *
     * @ORM\Column(name="name", type="string", length=200, nullable=true, options={"comment"="Наименование лекарственного препарата"})
     */
    private $name;

    /**
     * @var float|null
     *
     * @ORM\Column(name="pok", type="float", precision=10, scale=0, nullable=true, options={"comment"="Усредненный показатель частоты предоставления"})
     */
    private $pok;

    /**
     * @var string|null
     *
     * @ORM\Column(name="ed", type="string", length=20, nullable=true, options={"comment"="Единицы измерения"})
     */
    private $ed;

    /**
     * @var string|null
     *
     * @ORM\Column(name="ssd", type="string", length=20, nullable=true, options={"comment"="ССД"})
     */
    private $ssd;

    /**
     * @var string|null
     *
     * @ORM\Column(name="skd", type="string", length=20, nullable=true, options={"comment"="СКД"})
     */
    private $skd;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getIdStd(): ?int
    {
        return $this->idStd;
    }

    public function setIdStd(?int $idStd): self
    {
        $this->idStd = $idStd;

        return $this;
    }

    public function getKod(): ?string
    {
        return $this->kod;
    }

    public function setKod(?string $kod): self
    {
        $this->kod = $kod;

        return $this;
    }

    public function getKlass(): ?string
    {
        return $this->klass;
    }

    public function setKlass(?string $klass): self
    {
        $this->klass = $klass;

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

    public function getPok(): ?float
    {
        return $this->pok;
    }

    public function setPok(?float $pok): self
    {
        $this->pok = $pok;

        return $this;
    }

    public function getEd(): ?string
    {
        return $this->ed;
    }

    public function setEd(?string $ed): self
    {
        $this->ed = $ed;

        return $this;
    }

    public function getSsd(): ?string
    {
        return $this->ssd;
    }

    public function setSsd(?string $ssd): self
    {
        $this->ssd = $ssd;

        return $this;
    }

    public function getSkd(): ?string
    {
        return $this->skd;
    }

    public function setSkd(?string $skd): self
    {
        $this->skd = $skd;

        return $this;
    }


}
