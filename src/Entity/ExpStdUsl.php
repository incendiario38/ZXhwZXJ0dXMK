<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * ExpStdUsl
 *
 * @ORM\Table(name="exp_std_usl", uniqueConstraints={@ORM\UniqueConstraint(name="exp_std_usl_id_uindex", columns={"id"})})
 * @ORM\Entity
 */
class ExpStdUsl
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="SEQUENCE")
     * @ORM\SequenceGenerator(sequenceName="exp_std_usl_id_seq", allocationSize=1, initialValue=1)
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
     * @ORM\Column(name="kod_usl", type="string", length=30, nullable=true, options={"comment"="Код медицинской услуги"})
     */
    private $kodUsl;

    /**
     * @var string|null
     *
     * @ORM\Column(name="name_usl", type="string", length=300, nullable=true, options={"comment"="Наименование медицинской услуги"})
     */
    private $nameUsl;

    /**
     * @var float|null
     *
     * @ORM\Column(name="sr_pok", type="float", precision=10, scale=0, nullable=true, options={"comment"="Усредненный показатель частоты предоставления"})
     */
    private $srPok;

    /**
     * @var float|null
     *
     * @ORM\Column(name="sr_pok_krat", type="float", precision=10, scale=0, nullable=true, options={"comment"="Усредненный показатель кратности применения"})
     */
    private $srPokKrat;

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

    public function getKodUsl(): ?string
    {
        return $this->kodUsl;
    }

    public function setKodUsl(?string $kodUsl): self
    {
        $this->kodUsl = $kodUsl;

        return $this;
    }

    public function getNameUsl(): ?string
    {
        return $this->nameUsl;
    }

    public function setNameUsl(?string $nameUsl): self
    {
        $this->nameUsl = $nameUsl;

        return $this;
    }

    public function getSrPok(): ?float
    {
        return $this->srPok;
    }

    public function setSrPok(?float $srPok): self
    {
        $this->srPok = $srPok;

        return $this;
    }

    public function getSrPokKrat(): ?float
    {
        return $this->srPokKrat;
    }

    public function setSrPokKrat(?float $srPokKrat): self
    {
        $this->srPokKrat = $srPokKrat;

        return $this;
    }


}
