<?php

namespace App\Repository;

use App\Entity\CommandesLabo;
use App\Entity\Composants;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\ORM\EntityManagerInterface;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method Composants|null find($id, $lockMode = null, $lockVersion = null)
 * @method Composants|null findOneBy(array $criteria, array $orderBy = null)
 * @method Composants[]    findAll()
 * @method Composants[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class ComposantsRepository extends ServiceEntityRepository
{
    private $manager;

    public function __construct
    (
        ManagerRegistry $registry,
        EntityManagerInterface $manager
    )
    {
        parent::__construct($registry, Composants::class);
        $this->manager = $manager;
    }

    public function save($idCommposant, $unite, $nomComp)
    {
        $composants = new Composants();

        $composants
            ->setIdComposant($idCommposant)
            ->setNomComp($nomComp)
            ->setUnite($unite);

        $this->manager->persist($composants);
        $this->manager->flush();
    }

    public function update(Composants $composants): Composants
    {
        $this->manager->persist($composants);
        $this->manager->flush();

        return $composants;
    }

    public function remove(Composants $composants)
    {
        $this->manager->remove($composants);
        $this->manager->flush();
    }


    // /**
    //  * @return Composants[] Returns an array of Composants objects
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
    public function findOneBySomeField($value): ?Composants
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
