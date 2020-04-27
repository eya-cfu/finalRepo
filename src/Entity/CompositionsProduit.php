<?php

namespace App\Entity;

use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="App\Repository\CompositionsProduitRepository")
 */
class CompositionsProduit
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="integer")
     */
    private $quantiteComp;

    /**
     *
     * @ORM\Column(type="integer")
     */
    private $idComposition;// auto

    /**
     * @ORM\ManyToMany(targetEntity="App\Entity\Produits")
     */
    private $codeProduit;

    /**
     * @ORM\ManyToMany(targetEntity="App\Entity\Composants")
     */
    private $idComposant;

    /**
     * CompositionsProduit constructor.

     * @param $quantiteComp
     * @param $idComposition
     * @param $codeProduit
     * @param $idComposant
     */
    public function __construct( $quantiteComp, $idComposition)
    {

        $this->quantiteComp = $quantiteComp;
        $this->idComposition = $idComposition;
        $this->codeProduit = new ArrayCollection();
        $this->idComposant = new ArrayCollection();
    }


    public function getId(): ?int
    {
        return $this->id;
    }


    public function getQuantiteComp(): ?int
    {
        return $this->quantiteComp;
    }

    public function setQuantiteComp(int $quantiteComp): self
    {
        $this->quantiteComp = $quantiteComp;

        return $this;
    }

    public function getIdComposition(): ?int
    {
        return $this->idComposition;
    }

    public function setIdComposition(int $idComposition): self
    {
        $this->idComposition = $idComposition;

        return $this;
    }

    /**
     * @return Collection|Produits[]
     */
    public function getCodeProduit(): Collection
    {
        return $this->codeProduit;
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

    /**
     * @return Collection|Composants[]
     */
    public function getIdComposant(): Collection
    {
        return $this->idComposant;
    }

    public function addIdComposant(Composants $idComposant): self
    {
        if (!$this->idComposant->contains($idComposant)) {
            $this->idComposant[] = $idComposant;
        }

        return $this;
    }

    public function removeIdComposant(Composants $idComposant): self
    {
        if ($this->idComposant->contains($idComposant)) {
            $this->idComposant->removeElement($idComposant);
        }

        return $this;
    }

    public function toArray()
    {
        return [
            'id' => $this->getId(),
            'idComposition' => $this->getIdComposition(),
            'quantiteComp ' => $this->getQuantiteComp()
        ];
    }

}
