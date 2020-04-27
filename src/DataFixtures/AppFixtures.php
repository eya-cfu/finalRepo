<?php

namespace App\DataFixtures;

use App\Entity\Administrateurs;
use App\Entity\Boulangeries;
use App\Entity\CommandesBL;
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
    public function load(ObjectManager $manager)
    {
        // $product = new Product();
        // $manager->persist($product);
        $faker = Factory::create();
         // use this to populate the database
        for ($i = 0; $i < 50; $i++) {
            $administrateurs = new Administrateurs($faker->firstName,
                $faker->lastName,$faker->name,$faker->numberBetween(10000,999999));
            $manager->persist($administrateurs);

            $profils = new Profils($faker->numberBetween(10000,999),$faker->domainName,$faker->domainName,
                $faker->unique(true,1000)->password,$faker->firstName);
            $manager->persist($profils);

            $boulangeries = new Boulangeries($faker->name,$faker->colorName,$faker->numberBetween(100,999),
            $profils,$faker->numberBetween(10000,999),$faker->numberBetween(10000,999));
            $manager->persist($boulangeries);

            $livreur = new Livreurs($faker->numberBetween(10000,999),$faker->creditCardNumber,$profils);
            $manager->persist($livreur);

            $commandes = new CommandesBL($faker->colorName,"nouvelle",$faker->dateTime,$faker->dateTime,$boulangeries,$livreur);
            $manager->persist($commandes);

            $commandes2 = new CommandesBL($faker->colorName,"nouvelle",$faker->dateTime,$faker->dateTime,$boulangeries,$livreur);
            $manager->persist($commandes2);

            $produit = new Produits($faker->numberBetween(0,1000),$faker->colorName,$faker->randomFloat()
            ,$faker->randomFloat(),$faker->randomFloat());


            $produit2 = new Produits($faker->numberBetween(0,1000),$faker->colorName,$faker->randomFloat()
                ,$faker->randomFloat(),$faker->randomFloat());

            $manager->persist($produit);
            $manager->persist($produit2);


            $detailscommandesBL = new DetailsCommandesBL($faker->unique(true,1000)->numberBetween(0,1000)
                ,$faker->numberBetween(0,100));
            $detailscommandesBL->addCodeProduit($produit);
            $detailscommandesBL->addCodeProduit($produit2);
            $detailscommandesBL->addIdCommandeBL($commandes);
            $detailscommandesBL->addIdCommandeBL($commandes2);
            $manager->persist($detailscommandesBL);

            $composant = new Composants("snoots","long","floopy");
            $manager->persist($composant);

            $compositionProduit = new CompositionsProduit($faker->numberBetween(0,100),$faker->unique(true,1000)->numberBetween(0,1000));
            $compositionProduit->addCodeProduit($produit);
            $compositionProduit->addCodeProduit($produit2);
            $compositionProduit->addIdComposant($composant);
            $manager->persist($compositionProduit);

        }

        $manager->flush();
    }
}
