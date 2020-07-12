<?php

namespace App\Repository;

use App\Entity\Profils;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\ORM\EntityManagerInterface;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method Profils|null find($id, $lockMode = null, $lockVersion = null)
 * @method Profils|null findOneBy(array $criteria, array $orderBy = null)
 * @method Profils[]    findAll()
 * @method Profils[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class ProfilsRepository extends ServiceEntityRepository
{
    private $manager;

    public function __construct
    (
        ManagerRegistry $registry,
        EntityManagerInterface $manager
    )
    {
        parent::__construct($registry, Profils::class);
        $this->manager = $manager;
    }

    public function save($matricule, $login, $password, $nom, $affectation)
    {

        $profils = new Profils($matricule,$nom,$affectation,$login,$password);

        $profils->setDeleted(false);

        $this->manager->persist($profils);
        $this->manager->flush();
    }

    public function update(Profils $profils): Profils
    {
        $this->manager->persist($profils);
        $this->manager->flush();

        return $profils;
    }

    public function remove(Profils $profils)
    {
        $profils->setDeleted(true);

        //  $this->manager->remove($profils);
        $this->manager->persist($profils);

        $this->manager->flush();
    }

    // /**
    //  * @return Profils[] Returns an array of Profils objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('p')
            ->andWhere('p.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('p.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?Profils
    {
        return $this->createQueryBuilder('p')
            ->andWhere('p.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
