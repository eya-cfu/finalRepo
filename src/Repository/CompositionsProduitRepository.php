<?php

namespace App\Repository;

use App\Entity\CompositionsProduit;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\ORM\EntityManagerInterface;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method CompositionsProduit|null find($id, $lockMode = null, $lockVersion = null)
 * @method CompositionsProduit|null findOneBy(array $criteria, array $orderBy = null)
 * @method CompositionsProduit[]    findAll()
 * @method CompositionsProduit[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class CompositionsProduitRepository extends ServiceEntityRepository
{
    private $manager;

    public function __construct
    (
        ManagerRegistry $registry,
        EntityManagerInterface $manager
    )
    {
        parent::__construct($registry, CompositionsProduit::class);
        $this->manager = $manager;
    }

    public function save($idComposition, $quantiteComp,$idComposants ,$codesProduits)
    {
        $compositionsProduit = new CompositionsProduit();

        $compositionsProduit
            ->setIdComposition($idComposition)
            ->setQuantiteComp($quantiteComp);

        foreach ($codesProduits as $codeProduit)
        {
            $compositionsProduit->addCodeProduit($codeProduit);
        }
        foreach ($idComposants as $idComposant)
        {
            $compositionsProduit->addIdCommandeBL($idComposant);
        }



        $this->manager->persist($compositionsProduit);
        $this->manager->flush();
    }

    public function update(CompositionsProduit $compositionsProduit): CompositionsProduit
    {
        $this->manager->persist($compositionsProduit);
        $this->manager->flush();

        return $compositionsProduit;
    }

    public function remove(CompositionsProduit $compositionsProduit)
    {
        $this->manager->remove($compositionsProduit);
        $this->manager->flush();
    }


    // /**
    //  * @return CompositionsProduit[] Returns an array of CompositionsProduit objects
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
    public function findOneBySomeField($value): ?CompositionsProduit
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
