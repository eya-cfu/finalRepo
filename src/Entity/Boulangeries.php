<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="App\Repository\BoulangeriesRepository")
 */
class Boulangeries
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;


    /**
     * @ORM\Column(type="string", length=200)
     */
    private $nomBoul;

    /**
     * @ORM\Column(type="string", length=50)
     */
    private $adresse;

    /**
     * @ORM\Column(type="bigint")
     */
    private $telephone;

    /**
     * @ORM\OneToOne(targetEntity="App\Entity\Profils", cascade={"persist", "remove"})
     */
    private $matricule;

    /**
     *
     * @ORM\Column(type="integer", nullable=true)
     */
    private $idBoulangerie; // auto

    /**
     * @ORM\Column(type="integer", nullable=true)
     */
    private $nbOperateurs;

    /**
     * Boulangeries constructor.
     * @param $nomBoul
     * @param $adresse
     * @param $telephone
     * @param $matricule
     * @param $idBoulangerie
     * @param $nbOperateurs
     */
    public function __construct( $nomBoul, $adresse, $telephone, $matricule,  $nbOperateurs)//$idBoulangerie,
    {

        $this->nomBoul = $nomBoul;
        $this->adresse = $adresse;
        $this->telephone = $telephone;
        $this->matricule = $matricule;
      //  $this->idBoulangerie = $idBoulangerie;
        $this->nbOperateurs = $nbOperateurs;
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getNomBoul(): ?string
    {
        return $this->nomBoul;
    }

    public function setNomBoul(string $nomBoul): self
    {
        $this->nomBoul = $nomBoul;

        return $this;
    }

    public function getAdresse(): ?string
    {
        return $this->adresse;
    }

    public function setAdresse(string $adresse): self
    {
        $this->adresse = $adresse;

        return $this;
    }

    public function getTelephone(): ?int
    {
        return $this->telephone;
    }

    public function setTelephone(int $telephone): self
    {
        $this->telephone = $telephone;

        return $this;
    }

    public function getMatricule(): ?Profils
    {
        return $this->matricule;
    }

    public function setMatricule(?Profils $matricule): self
    {
        $this->matricule = $matricule;

        return $this;
    }

    public function getIdBoulangerie(): ?int
    {
        //changed to return id instead of idBoulangerie
        return $this->id;
    }

    public function setIdBoulangerie(int $idBoulangerie): self
    {
        $this->idBoulangerie = $idBoulangerie;

        return $this;
    }

    public function getNbOperateurs(): ?int
    {
        return $this->nbOperateurs;
    }

    public function setNbOperateurs(?int $nbOperateurs): self
    {
        $this->nbOperateurs = $nbOperateurs;

        return $this;
    }

    public function toArray()
    {
        return [
            'id' => $this->getId(),
            'idBoulangerie' => $this->getIdBoulangerie(),
            'nomBL' => $this->getNomBoul(),
            'adresse' => $this->getAdresse(),
            'nbOperateurs' => $this->getNbOperateurs()
        ];
    }
}
