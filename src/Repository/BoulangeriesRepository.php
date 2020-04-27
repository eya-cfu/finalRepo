<?php

namespace App\Repository;

use App\Entity\Boulangeries;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\ORM\EntityManagerInterface;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method Boulangeries|null find($id, $lockMode = null, $lockVersion = null)
 * @method Boulangeries|null findOneBy(array $criteria, array $orderBy = null)
 * @method Boulangeries[]    findAll()
 * @method Boulangeries[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class BoulangeriesRepository extends ServiceEntityRepository
{
    private $manager;
    public function __construct(ManagerRegistry $registry,  EntityManagerInterface $manager)
    {
        parent::__construct($registry, Boulangeries::class);
        $this->manager = $manager;
    }


    public function save( $addresse, $nbOperateurs, $nomBL,$telephone, $responsable)//$idBoulangerie,
    {
        $boulangerie = new Boulangeries($addresse, $nbOperateurs,$nomBL,$telephone,$responsable);

        $this->manager->persist($boulangerie);
        $this->manager->flush();
    }

    public function update(Boulangeries $boulangeries): Boulangeries
    {
        $this->manager->persist($boulangeries);
        $this->manager->flush();

        return $boulangeries;
    }

    public function remove(Boulangeries $boulangeries)
    {
        $this->manager->remove($boulangeries);
        $this->manager->flush();
    }



    // /**
    //  * @return Boulangeries[] Returns an array of Boulangeries objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('b')
            ->andWhere('b.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('b.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?Boulangeries
    {
        return $this->createQueryBuilder('b')
            ->andWhere('b.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
