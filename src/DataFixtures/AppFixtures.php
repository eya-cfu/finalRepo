<?php

namespace App\DataFixtures;

use App\Entity\Administrateurs;
use App\Entity\Boulangeries;
use App\Entity\CommandesBL;
use App\Entity\CommandesLabo;
use App\Entity\Composants;
use App\Entity\CompositionsProduit;
use App\Entity\DetailsCommandesBL;
use App\Entity\Livreurs;
use App\Entity\Produits;
use App\Entity\Profils;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\Persistence\ObjectManager;
use Faker\Factory;

class AppFixtures extends Fixture
{
    // This class creates sample Objects to populate the database for testing purposes
    //ignore objectmanager being underlined thats a visual bug it works fine
    public function load(ObjectManager $manager)
    {
        // $product = new Product();
        // $manager->persist($product);
        $faker = Factory::create();
         // use this to populate the database
        for ($i = 0; $i < 10; $i++) {
            $administrateurs = new Administrateurs($faker->firstName,
                $faker->lastName,$faker->name,$faker->numberBetween(10000,999999));
            $manager->persist($administrateurs);

            $profils = new Profils($faker->numberBetween(10000,999),$faker->domainName,$faker->domainName,
                $faker->unique(true,1000)->password,$faker->firstName);

            $profils->setDeleted(false);

            $manager->persist($profils);

            $boulangeries = new Boulangeries($faker->name,$faker->colorName,$faker->numberBetween(100,999),
            $profils,$faker->numberBetween(10000,999));

            $boulangeries->setDeleted(false);

            $manager->persist($boulangeries);

            $livreur = new Livreurs($faker->numberBetween(10000,999),$faker->creditCardNumber,$profils);
            $manager->persist($livreur);

            $commandes = new CommandesBL($faker->colorName,"nouvelle",$faker->dateTime, \DateTime::createFromFormat('d-m-Y',"20-03-2020"),$boulangeries,$livreur);
            $manager->persist($commandes);

            $commandes2 = new CommandesBL($faker->colorName,"nouvelle",$faker->dateTime,$faker->dateTime,$boulangeries,$livreur);
            $manager->persist($commandes2);

            $produit = new Produits($faker->colorName,$faker->randomFloat()
            ,$faker->randomFloat(),$faker->randomFloat());
            $produit->setDeleted(false);

            $produit2 = new Produits($faker->colorName,$faker->randomFloat()
                ,$faker->randomFloat(),$faker->randomFloat());
            $produit2->setDeleted(false);


            $manager->persist($produit);
            $manager->persist($produit2);

            $commandesLabo = new CommandesLabo("label",$faker->numberBetween(0001,9999),$faker->dateTime('d-m-Y'),$faker->numberBetween(0,1000));
            $manager->persist($commandesLabo);

            $detailscommandesBL = new DetailsCommandesBL($faker->numberBetween(0,100));
            $detailscommandesBL->addCodeProduit($produit);
            $detailscommandesBL->addCodeProduit($produit2);
            $detailscommandesBL->addIdCommandeBL($commandes);
            $detailscommandesBL->addIdCommandeBL($commandes2);
            $manager->persist($detailscommandesBL);

            $composant = new Composants($faker->unique(false, 1000)->lexify('??????'),"DeadlyHumanPoison","l");
            $manager->persist($composant);

            $compositionProduit = new CompositionsProduit($faker->numberBetween(0,100));
            $compositionProduit->addCodeProduit($produit);
            $compositionProduit->addCodeProduit($produit2);
            $compositionProduit->addIdComposant($composant);
            $manager->persist($compositionProduit);

        }

        $manager->flush();
    }
}
