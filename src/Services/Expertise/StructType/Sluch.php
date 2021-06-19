<?php

namespace App\Services\Expertise\StructType;

use DateTime;

/**
 * This class stands for sluch StructType
 * @subpackage Structs
 */
class Sluch
{
    /**
     * The idVrach
     * Meta informations extracted from the WSDL
     * - documentation: Идентификатор врача
     * - maxOccurs: 1
     * - minOccurs: 1
     * @var int
     */
    public $idVrach;
    /**
     * The enp
     * Meta informations extracted from the WSDL
     * - documentation: Единый номер полиса
     * - maxOccurs: 1
     * - minOccurs: 1
     * @var string
     */
    public $enp;
    /**
     * The nMedCard
     * Meta informations extracted from the WSDL
     * - documentation: Номер истории болезни
     * - maxOccurs: 1
     * - minOccurs: 1
     * @var int
     */
    public $nMedCard;
    /**
     * The dbeg
     * Meta informations extracted from the WSDL
     * - documentation: Дата начала лечения
     * - maxOccurs: 1
     * - minOccurs: 1
     * @var string
     */
    public $dbeg;
    /**
     * The dend
     * Meta informations extracted from the WSDL
     * - documentation: Дата окончания лечения
     * - maxOccurs: 1
     * - minOccurs: 1
     * @var string
     */
    public $dend;
    /**
     * The mkb
     * Meta informations extracted from the WSDL
     * - documentation: Основной диагноз
     * - maxOccurs: 1
     * - minOccurs: 1
     * @var string
     */
    public $mkb;
    /**
     * The uslOk
     * Meta informations extracted from the WSDL
     * - documentation: Условия оказания медицинской помощи
     * - maxOccurs: 1
     * - minOccurs: 1
     * @var int
     */
    public $uslOk;
    /**
     * The forma
     * Meta informations extracted from the WSDL
     * - documentation: Форма оказания медицинской помощи
     * - maxOccurs: 1
     * - minOccurs: 1
     * @var int
     */
    public $forma;
    /**
     * The stage
     * Meta informations extracted from the WSDL
     * - documentation: Степень тяжести
     * - maxOccurs: 1
     * - minOccurs: 1
     * @var int
     */
    public $stage;
    /**
     * The phase
     * Meta informations extracted from the WSDL
     * - documentation: Фаза состояния
     * - maxOccurs: 1
     * - minOccurs: 1
     * @var int
     */
    public $phase;
    /**
     * The uslCollection
     * Meta informations extracted from the WSDL
     * - documentation: Набор оказанных медицинских услуг
     * - maxOccurs: 1
     * - minOccurs: 1
     * @var UslCollection
     */
    public $uslCollection;
    /**
     * The lekCollection
     * Meta informations extracted from the WSDL
     * - documentation: Набор выписанных препаратов
     * - maxOccurs: 1
     * - minOccurs: 1
     * @var LekCollection
     */
    public $lekCollection;

    /**
     * Get idVrach value
     * @return int
     */
    public function getIdVrach()
    {
        return $this->idVrach;
    }

    /**
     * Set idVrach value
     * @param int $idVrach
     * @return Sluch
     */
    public function setIdVrach($idVrach = null)
    {
        $this->idVrach = $idVrach;
        return $this;
    }

    /**
     * Get enp value
     * @return string
     */
    public function getEnp()
    {
        return $this->enp;
    }

    /**
     * Set enp value
     * @param string $enp
     * @return Sluch
     */
    public function setEnp($enp = null)
    {
        $this->enp = $enp;
        return $this;
    }

    /**
     * Get nMedCard value
     * @return int
     */
    public function getNMedCard()
    {
        return $this->nMedCard;
    }

    /**
     * Set nMedCard value
     * @param int $nMedCard
     * @return Sluch
     */
    public function setNMedCard($nMedCard = null)
    {
        $this->nMedCard = $nMedCard;
        return $this;
    }

    /**
     * Get dbeg value
     * @return string
     */
    public function getDbeg()
    {
        return new DateTime($this->dbeg);
    }

    /**
     * Set dbeg value
     * @param string $dbeg
     * @return Sluch
     */
    public function setDbeg($dbeg = null)
    {
        $this->dbeg = $dbeg;
        return $this;
    }

    /**
     * Get dend value
     * @return string
     */
    public function getDend()
    {
        return new DateTime($this->dend);
    }

    /**
     * Set dend value
     * @param string $dend
     * @return Sluch
     */
    public function setDend($dend = null)
    {
        $this->dend = $dend;
        return $this;
    }

    /**
     * Get mkb value
     * @return string
     */
    public function getMkb()
    {
        return $this->mkb;
    }

    /**
     * Set mkb value
     * @param string $mkb
     * @return Sluch
     */
    public function setMkb($mkb = null)
    {
        $this->mkb = $mkb;
        return $this;
    }

    /**
     * Get uslOk value
     * @return int
     */
    public function getUslOk()
    {
        return $this->uslOk;
    }

    /**
     * Set uslOk value
     * @param int $uslOk
     * @return Sluch
     */
    public function setUslOk($uslOk = null)
    {
        $this->uslOk = $uslOk;
        return $this;
    }

    /**
     * Get forma value
     * @return int
     */
    public function getForma()
    {
        return $this->forma;
    }

    /**
     * Set forma value
     * @param int $forma
     * @return Sluch
     */
    public function setForma($forma = null)
    {
        $this->forma = $forma;
        return $this;
    }

    /**
     * Get stage value
     * @return int
     */
    public function getStage()
    {
        return $this->stage;
    }

    /**
     * Set stage value
     * @param int $stage
     * @return Sluch
     */
    public function setStage($stage = null)
    {
        $this->stage = $stage;
        return $this;
    }

    /**
     * Get phase value
     * @return int
     */
    public function getPhase()
    {
        return $this->phase;
    }

    /**
     * Set phase value
     * @param int $phase
     * @return Sluch
     */
    public function setPhase($phase = null)
    {
        $this->phase = $phase;
        return $this;
    }

    /**
     * Get uslCollection value
     * @return UslCollection
     */
    public function getUslCollection()
    {
        return $this->uslCollection;
    }

    /**
     * Set uslCollection value
     * @param UslCollection $uslCollection
     * @return Sluch
     */
    public function setUslCollection(UslCollection $uslCollection = null)
    {
        $this->uslCollection = $uslCollection;
        return $this;
    }

    /**
     * Get lekCollection value
     * @return LekCollection
     */
    public function getLekCollection()
    {
        return $this->lekCollection;
    }

    /**
     * Set lekCollection value
     * @param LekCollection $lekCollection
     * @return Sluch
     */
    public function setLekCollection(LekCollection $lekCollection = null)
    {
        $this->lekCollection = $lekCollection;
        return $this;
    }
}
