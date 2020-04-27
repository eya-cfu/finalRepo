<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="App\Repository\ComposantsRepository")
 */
class Composants
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=6)
     */
    private $idComposant;

    /**
     * @ORM\Column(type="string", length=50)
     */
    private $nomComp;

    /**
     * @ORM\Column(type="string", length=20,nullable=true)
     */
    private $unite;

    /**
     * Composants constructor.
     * @param $id
     * @param $idComposant
     * @param $nomComp
     * @param $unite
     */
    public function __construct( $idComposant, $nomComp, $unite)
    {

        $this->idComposant = $idComposant;
        $this->nomComp = $nomComp;
        $this->unite = $unite;
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getIdComposant(): ?string
    {
        return $this->idComposant;
    }

    public function setIdComposant(string $idComposant): self
    {
        $this->idComposant = $idComposant;

        return $this;
    }

    public function getNomComp(): ?string
    {
        return $this->nomComp;
    }

    public function setNomComp(string $nomComp): self
    {
        $this->nomComp = $nomComp;

        return $this;
    }

    public function getUnite(): ?string
    {
        return $this->unite;
    }

    public function setUnite(string $unite): self
    {
        $this->unite = $unite;

        return $this;
    }
    public function toArray()
    {
        return [
            'id' => $this->getId(),
            'idComposant' => $this->getIdComposant(),
            'unite' => $this->getUnite(),
            'nomComp' => $this->getNomComp(),
        ];
    }


}
