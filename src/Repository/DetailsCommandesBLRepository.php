<?php

namespace App\Repository;

use App\Entity\DetailsCommandesBL;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\ORM\EntityManagerInterface;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method DetailsCommandesBL|null find($id, $lockMode = null, $lockVersion = null)
 * @method DetailsCommandesBL|null findOneBy(array $criteria, array $orderBy = null)
 * @method DetailsCommandesBL[]    findAll()
 * @method DetailsCommandesBL[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class DetailsCommandesBLRepository extends ServiceEntityRepository
{
    private $manager;

    public function __construct
    (
        ManagerRegistry $registry,
        EntityManagerInterface $manager
    )
    {
        parent::__construct($registry, DetailsCommandesBL::class);
        $this->manager = $manager;
    }

    public function save( $quantiteProd,$idCommandesBLs,$codesProduits)//$idDetail,
    {
        $detailsCommandesBL = new DetailsCommandesBL($quantiteProd);

        foreach ($codesProduits as $codeProduit)
        {
            $detailsCommandesBL->addCodeProduit($codeProduit);
        }
        foreach ($idCommandesBLs as $idCommandesBL)
        {
            $detailsCommandesBL->addIdCommandeBL($idCommandesBL);
        }


        $this->manager->persist($detailsCommandesBL);
        $this->manager->flush();
    }



    public function update(DetailsCommandesBL $detailsCommandesBL): DetailsCommandesBL
    {
        $this->manager->persist($detailsCommandesBL);
        $this->manager->flush();

        return $detailsCommandesBL;
    }

    public function remove(DetailsCommandesBL $detailsCommandesBL)
    {
        $this->manager->remove($detailsCommandesBL);
        $this->manager->flush();
    }


    // /**
    //  * @return DetailsCommandesBL[] Returns an array of DetailsCommandesBL objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('d')
            ->andWhere('d.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('d.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?DetailsCommandesBL
    {
        return $this->createQueryBuilder('d')
            ->andWhere('d.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
