<?php

namespace App\Repository;

use App\Entity\CommandesBL;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\ORM\EntityManagerInterface;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method CommandesBL|null find($id, $lockMode = null, $lockVersion = null)
 * @method CommandesBL|null findOneBy(array $criteria, array $orderBy = null)
 * @method CommandesBL[]    findAll()
 * @method CommandesBL[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class CommandesBLRepository extends ServiceEntityRepository
{
    private $manager;

    public function __construct
    (
        ManagerRegistry $registry,
        EntityManagerInterface $manager
    )
    {
        parent::__construct($registry, CommandesBL::class);
        $this->manager = $manager;
    }

    public function save($idCommandeBL,$dueDate,$creationDate,$etat, $livreur, $boulangerie)
    {
        $commandesBL = new CommandesBL();

        $commandesBL
            ->setIdCommandeBL($idCommandeBL)
            ->setDueDate($dueDate)
            ->setCreationDate($creationDate)
            ->setEtat($etat)
            ->setLivreur($livreur)
            ->setIdBoulangerie($boulangerie);


        $this->manager->persist($commandesBL);
        $this->manager->flush();
    }

    public function update(CommandesBL $commandesBL): CommandesBL
    {
        $this->manager->persist($commandesBL);
        $this->manager->flush();

        return $commandesBL;
    }


    public function remove(CommandesBL $commandesBL)
    {
        $this->manager->remove($commandesBL);
        $this->manager->flush();
    }

    // /**
    //  * @return CommandesBL[] Returns an array of CommandesBL objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('c')
            ->andWhere('c.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('c.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?CommandesBL
    {
        return $this->createQueryBuilder('c')
            ->andWhere('c.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
