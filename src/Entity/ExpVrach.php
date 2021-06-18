<?php

declare(strict_types=1);

namespace App\Entity;

use App\Repository\ExpVrachRepository;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=ExpVrachRepository::class)
 * @ORM\Table(name="exp_vrach")
 */
class ExpVrach
{
    /**
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     */
    private int $id;

    /**
     * @ORM\Column(name="snils", type="string")
     */
    private string $snils;

    /**
     * @ORM\Column(name="fio", type="string")
     */
    private string $fio;

    /**
     * @ORM\ManyToOne(targetEntity="ExpLpu")
     * @ORM\JoinColumn(name="lpu_id", referencedColumnName="lpu_id")
     */
    private ?ExpLpu $lpu;

    /**
     * @ORM\Column(name="prof", type="string")
     */
    private string $prof;

    /**
     * @ORM\OneToOne(targetEntity="App\Entity\User", inversedBy="vrach")
     * @ORM\JoinColumn(name="id_user", referencedColumnName="id")
     */
    private ?User $user;

    /**
     * @return int
     */
    public function getId(): int
    {
        return $this->id;
    }

    /**
     * @param int $id
     *
     * @return ExpVrach
     */
    public function setId(int $id): ExpVrach
    {
        $this->id = $id;

        return $this;
    }

    /**
     * @return string
     */
    public function getSnils(): string
    {
        return $this->snils;
    }

    /**
     * @param string $snils
     *
     * @return ExpVrach
     */
    public function setSnils(string $snils): ExpVrach
    {
        $this->snils = $snils;

        return $this;
    }

    /**
     * @return string
     */
    public function getFio(): string
    {
        return $this->fio;
    }

    /**
     * @param string $fio
     *
     * @return ExpVrach
     */
    public function setFio(string $fio): ExpVrach
    {
        $this->fio = $fio;

        return $this;
    }

    /**
     * @return ExpLpu
     */
    public function getLpu(): ExpLpu
    {
        return $this->lpu;
    }

    /**
     * @param ExpLpu $lpu
     *
     * @return ExpVrach
     */
    public function setLpu(ExpLpu $lpu): ExpVrach
    {
        $this->lpu = $lpu;

        return $this;
    }

    /**
     * @return string
     */
    public function getProf(): string
    {
        return $this->prof;
    }

    /**
     * @param string $prof
     *
     * @return ExpVrach
     */
    public function setProf(string $prof): ExpVrach
    {
        $this->prof = $prof;

        return $this;
    }

    /**
     * @return User|null
     */
    public function getUser(): ?User
    {
        return $this->user;
    }

    /**
     * @param User|null $user
     *
     * @return ExpVrach
     */
    public function setUser(?User $user): ExpVrach
    {
        $this->user = $user;

        return $this;
    }
}
