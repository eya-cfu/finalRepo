<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;
use phpDocumentor\Reflection\Types\Integer;

/**
 * @ORM\Entity(repositoryClass="App\Repository\ProduitsRepository")
 */
class Produits
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     **
     * @ORM\Column(type="integer")
     */
    private $codeProduit;// auto

    /**
     * @ORM\Column(type="string", length=20, nullable=true)
     */
    private $libelle;

    /**
     * @ORM\Column(type="float")
     */
    private $prixHA;

    /**
     * @ORM\Column(type="float")
     */
    private $TVA;

    /**
     * @ORM\Column(type="float", nullable=true)
     */
    private $prixTTC;

    /**
     * Produits constructor.
     * @param $id
     * @param $codeProduit
     * @param $libelle
     * @param $prixHA
     * @param $TVA
     * @param $prixTTC
     */
    public function __construct( $codeProduit, $libelle, $prixHA, $TVA, $prixTTC)
    {

        $this->codeProduit = $codeProduit;
        $this->libelle = $libelle;
        $this->prixHA = $prixHA;
        $this->TVA = $TVA;
        $this->prixTTC = $prixTTC;
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getCodeProduit(): ?int
    {
        return $this->codeProduit;
    }

    public function setCodeProduit(int $codeProduit): self
    {
        $this->codeProduit = $codeProduit;

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

    public function getPrixHA(): ?float
    {
        return $this->prixHA;
    }

    public function setPrixHA(float $prixHA): self
    {
        $this->prixHA = $prixHA;

        return $this;
    }

    public function getTVA(): ?float
    {
        return $this->TVA;
    }

    public function setTVA(float $TVA): self
    {
        $this->TVA = $TVA;

        return $this;
    }

    public function getPrixTTC(): ?float
    {
        return $this->prixTTC;
    }

    public function setPrixTTC(?float $prixTTC): self
    {
        $this->prixTTC = $prixTTC;

        return $this;
    }

    public function toArray()
    {
        return [
            'id' => $this->getId(),
            'codeProduit' => $this->getCodeProduit(),
            'libelle' => $this->getLibelle(),
            'prixHA' => $this->getPrixHA(),
            'TVA' => $this->getTVA(),
            'prixTTC' => $this->getPrixTTC()
        ];
    }

}
