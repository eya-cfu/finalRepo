<?php

namespace App\Repository;

use App\Entity\Administrateurs;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\ORM\EntityManagerInterface;
use Doctrine\Persistence\ManagerRegistry;
use PhpParser\Node\Expr\Cast\Object_;

/**
 * @method Administrateurs|null find($id, $lockMode = null, $lockVersion = null)
 * @method Administrateurs|null findOneBy(array $criteria, array $orderBy = null)
 * @method Administrateurs[]    findAll()
 * @method Administrateurs[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class AdministrateursRepository extends ServiceEntityRepository
{
    private $manager;

    public function __construct(ManagerRegistry $registry,EntityManagerInterface $manager)
    {
        parent::__construct($registry, Administrateurs::class);
        $this->manager = $manager;
    }

    public function save($loginAdmin, $passwordAdmin, $nomAdmin, $teleAdmin)
    {
        $admin = new Administrateurs();

        $admin
            ->setLoginAdmin($loginAdmin)
            ->setPasswordAdmin($passwordAdmin)
            ->setNomAdmin($nomAdmin)
            ->setTeleAdmin($teleAdmin);

        $this->manager->persist($admin);
        $this->manager->flush();
    }

    public function update(Administrateurs $administrateurs): Administrateurs
    {
        $this->manager->persist($administrateurs);
        $this->manager->flush();

        return $administrateurs;
    }

    public function remove(Administrateurs $administrateurs)
    {
        $this->manager->remove($administrateurs);
        $this->manager->flush();
    }


    // /**
    //  * @return Administrateurs[] Returns an array of Administrateurs objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('a')
            ->andWhere('a.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('a.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?Administrateurs
    {
        return $this->createQueryBuilder('a')
            ->andWhere('a.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
