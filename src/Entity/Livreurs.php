<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="App\Repository\LivreursRepository")
 */
class Livreurs
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="bigint", nullable=true)
     */
    private $teleLivreur;

    /**
     * @ORM\Column(type="string", length=20)
     */
    private $numVehicule;



    /**
     * @ORM\OneToOne(targetEntity="App\Entity\Profils", cascade={"persist", "remove"})
     * @ORM\JoinColumn(nullable=false)
     */
    private $matricule;

    /**
     * @ORM\Column(type="boolean", nullable=true)
     */
    private $deleted;

    /**
     * Livreurs constructor.

     * @param $teleLivreur
     * @param $numVehicule
     * @param $matricule
     */
    public function __construct( $teleLivreur, $numVehicule, $matricule)
    {

        $this->teleLivreur = $teleLivreur;
        $this->numVehicule = $numVehicule;
        $this->matricule = $matricule;
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getTeleLivreur(): ?string
    {
        return $this->teleLivreur;
    }

    public function setTeleLivreur(?string $teleLivreur): self
    {
        $this->teleLivreur = $teleLivreur;

        return $this;
    }

    public function getNumVehicule(): ?string
    {
        return $this->numVehicule;
    }

    public function setNumVehicule(string $numVehicule): self
    {
        $this->numVehicule = $numVehicule;

        return $this;
    }

    public function getMatricule(): ?Profils
    {
        return $this->matricule;
    }

    public function setMatricule(Profils $matricule): self
    {
        $this->matricule = $matricule;

        return $this;
    }

    public function toArray()
    {
        return [
           // 'id' => $this->getId(),
            'numVehicule' => $this->getNumVehicule(),
            'teleLivreur' => $this->getTeleLivreur()
        ];
    }

    public function getDeleted(): ?bool
    {
        return $this->deleted;
    }

    public function setDeleted(?bool $deleted): self
    {
        $this->deleted = $deleted;

        return $this;
    }

}
