<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="App\Repository\CommandesBLRepository")
 */
class CommandesBL
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=20)
     */
    private $idCommandeBL;

    /**
     * @ORM\Column(type="string", length=20)
     */
    private $etat;

    /**
     * @ORM\Column(type="date")
     */
    private $dueDate;

    /**
     * @ORM\Column(type="date")
     */
    private $creationDate;

    /**
     * @ORM\ManyToOne(targetEntity="App\Entity\Boulangeries")
     * @ORM\JoinColumn(nullable=true)
     */
    private $idBoulangerie;


    /**
     * @ORM\ManyToOne(targetEntity="App\Entity\Livreurs")
     */
    private $livreur;

    /**
     * CommandesBL constructor.
     * @param $idCommandeBL
     * @param $etat
     * @param $dueDate
     * @param $creationDate
     * @param $idBoulangerie
     * @param $livreur
     */
    public function __construct($idCommandeBL, $etat, $dueDate, $creationDate, $idBoulangerie, $livreur)
    {
        $this->idCommandeBL = $idCommandeBL;
        $this->etat = $etat;
        $this->dueDate = $dueDate;
        $this->creationDate = $creationDate;
        $this->idBoulangerie = $idBoulangerie;
        $this->livreur = $livreur;
    }


    public function getId(): ?int
    {
        return $this->id;
    }

    public function getIdCommandeBL(): ?string
    {
        return $this->idCommandeBL;
    }

    public function setIdCommandeBL(string $idCommandeBL): self
    {
        $this->idCommandeBL = $idCommandeBL;

        return $this;
    }

    public function getEtat(): ?string
    {
        return $this->etat;
    }

    public function setEtat(string $etat): self
    {
        $this->etat = $etat;

        return $this;
    }

    public function getDueDate(): ?\DateTimeInterface
    {
        return $this->dueDate;
    }

    public function setDueDate(\DateTimeInterface $dueDate): self
    {
        $this->dueDate = $dueDate;

        return $this;
    }

    public function getCreationDate(): ?\DateTimeInterface
    {
        return $this->creationDate;
    }

    public function setCreationDate(\DateTimeInterface $creationDate): self
    {
        $this->creationDate = $creationDate;

        return $this;
    }

    public function getIdBoulangerie(): ?Boulangeries
    {
        return $this->idBoulangerie;
    }

    public function setIdBoulangerie(?Boulangeries $idBoulangerie): self
    {
        $this->idBoulangerie = $idBoulangerie;

        return $this;
    }


    public function getLivreur(): ?Livreurs
    {
        return $this->livreur;
    }

    public function setLivreur(?Livreurs $livreur): self
    {
        $this->livreur = $livreur;

        return $this;
    }
    public function toArray()
    {
        return [
            'id' => $this->getId(),
            'idCommandeBL' => $this->getIdCommandeBL(),
            'dueDate' => $this->getDueDate(),
            'creationDate' => $this->getCreationDate(),
            'etat' => $this->getEtat()
        ];
    }
}
