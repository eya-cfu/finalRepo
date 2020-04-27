<?php

namespace App\Repository;

use App\Entity\Livreurs;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\ORM\EntityManagerInterface;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method Livreurs|null find($id, $lockMode = null, $lockVersion = null)
 * @method Livreurs|null findOneBy(array $criteria, array $orderBy = null)
 * @method Livreurs[]    findAll()
 * @method Livreurs[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class LivreursRepository extends ServiceEntityRepository
{
    private $manager;

    public function __construct
    (
        ManagerRegistry $registry,
        EntityManagerInterface $manager
    )
    {
        parent::__construct($registry, Livreurs::class);
        $this->manager = $manager;
    }

    public function save($numVehicule, $teleLivreur, $matricule)
    {
        $livreurs = new Livreurs($numVehicule,$teleLivreur,$matricule);

        $this->manager->persist($livreurs);
        $this->manager->flush();
    }

    public function update(Livreurs $livreurs): Livreurs
    {
        $this->manager->persist($livreurs);
        $this->manager->flush();

        return $livreurs;
    }

    public function remove(Livreurs $livreurs)
    {
        $this->manager->remove($livreurs);
        $this->manager->flush();
    }

    // /**
    //  * @return Livreurs[] Returns an array of Livreurs objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('l')
            ->andWhere('l.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('l.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?Livreurs
    {
        return $this->createQueryBuilder('l')
            ->andWhere('l.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
