<?php

namespace App\Entity;

use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="App\Repository\CommandesLaboRepository")
 */
class CommandesLabo
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     *
     * @ORM\Column(type="integer", nullable = true)
     */
    private $idCommandeLabo;// auto


    /**
     * @ORM\Column(type="string", length=10, nullable=true)
     */
    private $libelle;

    /**
     * @ORM\Column(type="integer", nullable=true)
     */
    private $quantiteTotal;

    /**
     * @ORM\ManyToMany(targetEntity="App\Entity\Produits")
     */
    private $codeProduit;

    /**
     * @ORM\Column(type="date")
     */
    private $dueDate;

    /**
     * CommandesLabo constructor.
     * @param $idCommandeLabo
     * @param $libelle
     * @param $quantiteTotal
     * @param $codeProduit
     * @param $dueDate
     */
    public function __construct(  $libelle, $quantiteTotal, $dueDate)//$idCommandeLabo,
    {

    //    $this->idCommandeLabo = $idCommandeLabo;
        $this->libelle = $libelle;
        $this->quantiteTotal = $quantiteTotal;
        $this->codeProduit = new ArrayCollection();
        $this->dueDate = $dueDate;
    }


    public function getId(): ?int
    {
        return $this->id;
    }

    public function getIdCommandeLabo(): ?string
    {
        //changed to return id
        return $this->id;
    }

    public function setIdCommandeLabo(string $idCommandeLabo): self
    {
        $this->idCommandeLabo = $idCommandeLabo;

        return $this;
    }

    public function getCodeProduit(): ?string
    {
        return $this->codeProduit;
    }

    public function setCodeProduit(string $CodeProduit): self
    {
        $this->CodeProduit = $CodeProduit;

        return $this;
    }

    public function getLibelle(): ?string
    {
        return $this->libelle;
    }

    public function setLibelle(?string $libelle): self
    {
        $this->libelle = $libelle;

        return $this;
    }

    public function getQuantiteTotal(): ?int
    {
        return $this->quantiteTotal;
    }

    public function setQuantiteTotal(?int $quantiteTotal): self
    {
        $this->quantiteTotal = $quantiteTotal;

        return $this;
    }

    public function addCodeProduit(Produits $codeProduit): self
    {
        if (!$this->codeProduit->contains($codeProduit)) {
            $this->codeProduit[] = $codeProduit;
        }

        return $this;
    }

    public function removeCodeProduit(Produits $codeProduit): self
    {
        if ($this->codeProduit->contains($codeProduit)) {
            $this->codeProduit->removeElement($codeProduit);
        }

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

    public function toArray()
    {
        return [
            'id' => $this->getId(),
            'idCommandeAL' => $this->getIdCommandeLabo(),
            'dueDate' => $this->getDueDate(),
            'libelle' => $this->getLibelle(),
            'quantiteTotal' => $this->getQuantiteTotal()
        ];
    }
}
