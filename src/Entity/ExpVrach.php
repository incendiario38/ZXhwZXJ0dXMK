<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * ExpVrach
 *
 * @ORM\Table(name="exp_vrach", uniqueConstraints={@ORM\UniqueConstraint(name="exp_vrach_id_uindex", columns={"id"})})
 * @ORM\Entity
 */
class ExpVrach
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="SEQUENCE")
     * @ORM\SequenceGenerator(sequenceName="exp_vrach_id_seq", allocationSize=1, initialValue=1)
     */
    private $id;

    /**
     * @var string|null
     *
     * @ORM\Column(name="snils", type="string", length=20, nullable=true)
     */
    private $snils;

    /**
     * @var string|null
     *
     * @ORM\Column(name="fio", type="string", length=200, nullable=true)
     */
    private $fio;

    /**
     * @var int|null
     *
     * @ORM\Column(name="lpu_id", type="integer", nullable=true)
     */
    private $lpuId;

    /**
     * @var string|null
     *
     * @ORM\Column(name="prof", type="string", length=255, nullable=true)
     */
    private $prof;

    /**
     * @var int|null
     *
     * @ORM\Column(name="id_user", type="integer", nullable=true)
     */
    private $idUser;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getSnils(): ?string
    {
        return $this->snils;
    }

    public function setSnils(?string $snils): self
    {
        $this->snils = $snils;

        return $this;
    }

    public function getFio(): ?string
    {
        return $this->fio;
    }

    public function setFio(?string $fio): self
    {
        $this->fio = $fio;

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

    public function getProf(): ?string
    {
        return $this->prof;
    }

    public function setProf(?string $prof): self
    {
        $this->prof = $prof;

        return $this;
    }

    public function getIdUser(): ?int
    {
        return $this->idUser;
    }

    public function setIdUser(?int $idUser): self
    {
        $this->idUser = $idUser;

        return $this;
    }


}
