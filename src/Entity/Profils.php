<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="App\Repository\ProfilsRepository")
 */
class Profils
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
    private $matricule;

    /**
     * @ORM\Column(type="string", length=50)
     */
    private $nom;

    /**
     * @ORM\Column(type="string", length=20, nullable=true)
     */
    private $affectation;

    /**
     * @ORM\Column(type="string", length=50, unique = true)
     */
    private $login;

    /**
     * @ORM\Column(type="string", length=20)
     */
    private $password;

    /**
     * Profils constructor.

     * @param $matricule
     * @param $nom
     * @param $affectation
     * @param $login
     * @param $password
     */
    public function __construct( $matricule, $nom, $affectation, $login, $password)
    {

        $this->matricule = $matricule;
        $this->nom = $nom;
        $this->affectation = $affectation;
        $this->login = $login;
        $this->password = $password;
    }


    public function getId(): ?int
    {
        return $this->id;
    }

    public function getMatricule(): ?int
    {
        return $this->matricule;
    }

    public function setMatricule(int $matricule): self
    {
        $this->matricule = $matricule;

        return $this;
    }

    public function getNom(): ?string
    {
        return $this->nom;
    }

    public function setNom(string $nom): self
    {
        $this->nom = $nom;

        return $this;
    }

    public function getAffectation(): ?string
    {
        return $this->affectation;
    }

    public function setAffectation(?string $affectation): self
    {
        $this->affectation = $affectation;

        return $this;
    }

    public function getLogin(): ?string
    {
        return $this->login;
    }

    public function setLogin(string $login): self
    {
        $this->login = $login;

        return $this;
    }

    public function getPassword(): ?string
    {
        return $this->password;
    }

    public function setPassword(string $password): self
    {
        $this->password = $password;

        return $this;
    }

    public function toArray()
    {
        return [
            'id' => $this->getId(),
            'matricule' => $this->getMatricule(),
            'nom' => $this->getNom(),
            'affectation' => $this->getAffectation(),
            'login' => $this->getLogin(),
            'password' => $this->getPassword()
        ];
    }

}
