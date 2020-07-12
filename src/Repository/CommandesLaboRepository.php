<?php

namespace App\Repository;

use App\Entity\CommandesLabo;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\ORM\EntityManagerInterface;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method CommandesLabo|null find($id, $lockMode = null, $lockVersion = null)
 * @method CommandesLabo|null findOneBy(array $criteria, array $orderBy = null)
 * @method CommandesLabo[]    findAll()
 * @method CommandesLabo[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class CommandesLaboRepository extends ServiceEntityRepository
{
    private $manager;

    public function __construct
    (
        ManagerRegistry $registry,
        EntityManagerInterface $manager
    )
    {
        parent::__construct($registry, CommandesLabo::class);
        $this->manager = $manager;
    }

    public function save( $dueDate, $libelle, $quantiteTotal, $codeProduit)//$idCommandeLabo,
    {
        $commandesLabo = new CommandesLabo($libelle,$quantiteTotal,$dueDate,$codeProduit);

        $this->manager->persist($commandesLabo);
        $this->manager->flush();
    }

    public function update(CommandesLabo $commandesLabo): CommandesLabo
    {
        $this->manager->persist($commandesLabo);
        $this->manager->flush();

        return $commandesLabo;
    }

    public function remove(CommandesLabo $commandesLabo)
    {
        $this->manager->remove($commandesLabo);
        $this->manager->flush();
    }



    // /**
    //  * @return CommandesLabo[] Returns an array of CommandesLabo objects
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
    public function findOneBySomeField($value): ?CommandesLabo
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
