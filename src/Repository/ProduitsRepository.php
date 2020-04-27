<?php

namespace App\Repository;

use App\Entity\Produits;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\ORM\EntityManagerInterface;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method Produits|null find($id, $lockMode = null, $lockVersion = null)
 * @method Produits|null findOneBy(array $criteria, array $orderBy = null)
 * @method Produits[]    findAll()
 * @method Produits[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class ProduitsRepository extends ServiceEntityRepository
{
    private $manager;

    public function __construct
    (
        ManagerRegistry $registry,
        EntityManagerInterface $manager
    )
    {
        parent::__construct($registry, Produits::class);
        $this->manager = $manager;
    }

    public function save($codeProduit, $libelle, $prixHA, $TVA, $prixTTC)
    {
        $produits = new Produits();

        $produits
            ->setCodeProduit($codeProduit)
            ->setLibelle($libelle)
            ->setPrixHA($prixHA)
            ->setTVA($TVA)
            ->setPrixTTC($prixTTC);

        $this->manager->persist($produits);
        $this->manager->flush();
    }

    public function update(Produits $produits): Produits
    {
        $this->manager->persist($produits);
        $this->manager->flush();

        return $produits;
    }

    public function remove(Produits $produits)
    {
        $this->manager->remove($produits);
        $this->manager->flush();
    }

    // /**
    //  * @return Produits[] Returns an array of Produits objects
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
    public function findOneBySomeField($value): ?Produits
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
