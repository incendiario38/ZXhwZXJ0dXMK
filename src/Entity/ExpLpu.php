<?php

declare(strict_types=1);

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity()
 * @ORM\Table(name="exp_lpu")
 */
class ExpLpu
{
    /**
     * @ORM\Column(name="lpu_id", type="integer")
     * @ORM\Id
     */
    private $id;

    /**
     * @ORM\Column(name="name", type="string")
     */
    private $name;

    public function getId(): int
    {
        return $this->id;
    }

    public function setId(int $id): ExpLpu
    {
        $this->id = $id;

        return $this;
    }

    public function getName(): string
    {
        return $this->name;
    }

    public function setName(string $name): ExpLpu
    {
        $this->name = $name;

        return $this;
    }
}
