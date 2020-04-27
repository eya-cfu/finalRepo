<?php

namespace App\Entity;

use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="App\Repository\DetailsCommandesBLRepository")
 */
class DetailsCommandesBL
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;


    /**
     * @ORM\ManyToMany(targetEntity="App\Entity\Produits")
     */
    private $codeProduit;

    /**
     * @ORM\ManyToMany(targetEntity="App\Entity\CommandesBL")
     */
    private $idCommandeBL;

    /**
     *
     * @ORM\Column(type="integer", nullable = true)
     */
    private $idDetail;// auto

    /**
     * @ORM\Column(type="integer", nullable=true)
     */
    private $quantiteProd;

    /**
     * DetailsCommandesBL constructor.

     * @param $codeProduit
     * @param $idCommandeBL
     * @param $idDetail
     * @param $quantiteProd
     */
    public function __construct(  $quantiteProd)// idDetail ,
    {

       // $this->idDetail = $idDetail;
        $this->quantiteProd = $quantiteProd;
        $this->codeProduit = new ArrayCollection();
        $this->idCommandeBL = new ArrayCollection();
    }


    public function getId(): ?int
    {
        return $this->id;
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
     * @return Collection|CommandesBL[]
     */
    public function getIdCommandeBL(): Collection
    {
        return $this->idCommandeBL;
    }

    public function addIdCommandeBL(CommandesBL $idCommandeBL): self
    {
        if (!$this->idCommandeBL->contains($idCommandeBL)) {
            $this->idCommandeBL[] = $idCommandeBL;
        }

        return $this;
    }

    public function removeIdCommandeBL(CommandesBL $idCommandeBL): self
    {
        if ($this->idCommandeBL->contains($idCommandeBL)) {
            $this->idCommandeBL->removeElement($idCommandeBL);
        }

        return $this;
    }

    public function getIdDetail(): ?int
    {
        //changed to return id
        return $this->id;
    }

    public function setIdDetail(int $idDetail): self
    {
        $this->idDetail = $idDetail;

        return $this;
    }
    public function toArray()
    {
        return [
            'id' => $this->getId(),
            'idDetail' => $this->getIdDetail(),
            'quantiteProd' => $this->getQuantiteProd()
        ];
    }

    public function getQuantiteProd(): ?int
    {
        return $this->quantiteProd;
    }

    public function setQuantiteProd(?int $quantiteProd): self
    {
        $this->quantiteProd = $quantiteProd;

        return $this;
    }



}
