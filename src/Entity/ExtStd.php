<?php

declare(strict_types=1);

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity()
 * @ORM\Table(name="exp_std")
 */
class ExtStd
{
    /**
     * @ORM\Column(name="id_std", type="integer")
     * @ORM\Id
     */
    private $id;

    /**
     * @ORM\Column(name="std", type="string")
     */
    private $std;

    /**
     * @ORM\Column(name="vz_kat", type="string")
     */
    private $vzkat;

    /**
     * @ORM\Column(name="prikaz", type="string")
     */
    private $prikaz;

    /**
     * @ORM\Column(name="phase", type="integer")
     */
    private $phase;

    /**
     * @ORM\Column(name="vid", type="integer")
     */
    private $vid;

    /**
     * @return mixed
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * @param mixed $id
     *
     * @return ExtStd
     */
    public function setId($id)
    {
        $this->id = $id;

        return $this;
    }

    /**
     * @return mixed
     */
    public function getStd()
    {
        return $this->std;
    }

    /**
     * @param mixed $std
     *
     * @return ExtStd
     */
    public function setStd($std)
    {
        $this->std = $std;

        return $this;
    }

    /**
     * @return mixed
     */
    public function getVzkat()
    {
        return $this->vzkat;
    }

    /**
     * @param mixed $vzkat
     *
     * @return ExtStd
     */
    public function setVzkat($vzkat)
    {
        $this->vzkat = $vzkat;

        return $this;
    }

    /**
     * @return mixed
     */
    public function getPrikaz()
    {
        return $this->prikaz;
    }

    /**
     * @param mixed $prikaz
     *
     * @return ExtStd
     */
    public function setPrikaz($prikaz)
    {
        $this->prikaz = $prikaz;

        return $this;
    }

    /**
     * @return mixed
     */
    public function getPhase()
    {
        return $this->phase;
    }

    /**
     * @param mixed $phase
     *
     * @return ExtStd
     */
    public function setPhase($phase)
    {
        $this->phase = $phase;

        return $this;
    }

    /**
     * @return mixed
     */
    public function getVid()
    {
        return $this->vid;
    }

    /**
     * @param mixed $vid
     *
     * @return ExtStd
     */
    public function setVid($vid)
    {
        $this->vid = $vid;

        return $this;
    }
}
