<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="App\Repository\AdministrateursRepository")
 */
class Administrateurs
{


    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=50)
     */
    private $loginAdmin;

    /**
     * @ORM\Column(type="string", length=20)
     */
    private $passwordAdmin;

    /**
     * @ORM\Column(type="string", length=50)
     */
    private $nomAdmin;

    /**
     * @ORM\Column(type="bigint", nullable=true)
     */
    private $teleAdmin;

    /**
     * Administrateurs constructor.
     * @param $loginAdmin
     * @param $passwordAdmin
     * @param $nomAdmin
     * @param $teleAdmin
     */
    public function __construct( $loginAdmin, $passwordAdmin, $nomAdmin, $teleAdmin)
    {

        $this->loginAdmin = $loginAdmin;
        $this->passwordAdmin = $passwordAdmin;
        $this->nomAdmin = $nomAdmin;
        $this->teleAdmin = $teleAdmin;
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getLoginAdmin(): ?string
    {
        return $this->loginAdmin;
    }

    public function setLoginAdmin(string $loginAdmin): self
    {
        $this->loginAdmin = $loginAdmin;

        return $this;
    }

    public function getPasswordAdmin(): ?string
    {
        return $this->passwordAdmin;
    }

    public function setPasswordAdmin(string $passwordAdmin): self
    {
        $this->passwordAdmin = $passwordAdmin;

        return $this;
    }

    public function getNomAdmin(): ?string
    {
        return $this->nomAdmin;
    }

    public function setNomAdmin(string $nomAdmin): self
    {
        $this->nomAdmin = $nomAdmin;

        return $this;
    }

    public function getTeleAdmin(): ?int
    {
        return $this->teleAdmin;
    }

    public function setTeleAdmin(?int $teleAdmin): self
    {
        $this->teleAdmin = $teleAdmin;

        return $this;
    }

    public function toArray()
    {
        return [
            'id' => $this->getId(),
            'loginAdmin' => $this->getLoginAdmin(),
            'passwordAdmin' => $this->getPasswordAdmin(),
            'nomAdmin' => $this->getNomAdmin(),
            'teleAdmin' => $this->getTeleAdmin()
        ];
    }

}
