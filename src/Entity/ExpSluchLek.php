<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * ExpSluchLek
 *
 * @ORM\Table(name="exp_sluch_lek", uniqueConstraints={@ORM\UniqueConstraint(name="exp_sluch_lek_id_uindex", columns={"id"})})
 * @ORM\Entity
 */
class ExpSluchLek
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="SEQUENCE")
     * @ORM\SequenceGenerator(sequenceName="exp_sluch_lek_id_seq", allocationSize=1, initialValue=2)
     */
    private $id;

    /**
     * @ORM\ManyToOne(targetEntity="ExpLek", inversedBy="skuchlek")
     * @ORM\JoinColumn(name="lek_name", referencedColumnName="name")
     */
    private $lekName;

    /**
     * @var
     * @ORM\ManyToOne(targetEntity="ExpSluch", inversedBy="lek")
     * @ORM\JoinColumn(name="id_sluch",referencedColumnName="id")
     */
    protected $sluch;

    /**
     */
    private $del;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getLekName(): ?ExpLek
    {
        return $this->lekName;
    }

    public function setLekName(?ExpLek $lekName): self
    {
        $this->lekName = $lekName;

        return $this;
    }

    public function getSluch(): ?ExpSluch
    {
        return $this->sluch;
    }

    public function setSluch(?ExpSluch $sluch): self
    {
        $this->sluch = $sluch;

        return $this;
    }

    /**
     * @return mixed
     */
    public function getDel()
    {
        return $this->del;
    }

    /**
     * @param mixed $del
     */
    public function setDel($del): void
    {
        $this->del = $del;
    }


}
