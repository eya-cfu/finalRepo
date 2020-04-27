<?php

namespace App\Controller;

use App\Entity\Composants;
use App\Entity\CompositionsProduit;
use App\Repository\ProduitsRepository;

use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;

class ProduitsController
{
    private $produitsRepository;
    private $composantRepository;
    private $compositionsRepository;
    private $em ;

    public function __construct(ProduitsRepository $produitsRepository, EntityManagerInterface $entityManager)
    {
        $this->produitsRepository = $produitsRepository;
        $this->em = $entityManager;
        $this->composantRepository =$this->em->getRepository(Composants::class);
        $this->compositionsRepository =$this->em->getRepository(CompositionsProduit::class);

    }


    /**
     * @Route("/produits", name="getProduits", methods={"GET"})
     */
    public function getAll(): JsonResponse
    {
        $produits = $this->produitsRepository->findAll();
        $data = [];

        foreach ($produits as $produit) {
            $data[] = [
               // 'id' => $produit->getId(),
                'codeProduit' => $produit->getCodeProduit(),// auto incremented
                'libelle' => $produit->getLibelle(),
                'prixHA' => $produit->getPrixHA(),
                'TVA' => $produit->getTVA(),
                'prixTTC' => $produit->getPrixTTC(),
            ];
        }

        return new JsonResponse($data, Response::HTTP_OK);
    }

    /**
     * @Route("/produits", name="addProduit", methods={"POST"})
     */
    public function add(Request $request): JsonResponse
    {

        $data = json_decode($request->getContent(), true);

        $codeProduit = $data['codeProduit'];
        $libelle = $data['libelle'];
        $prixHA = $data['prixHA'];
        $TVA = $data['TVA'];
        $prixTTC = $data['prixTTC'];

        if (empty($codeProduit) || empty($libelle) || empty($prixHA))
        {
            throw new NotFoundHttpException('Expecting mandatory parameters!');
        }

        $this->produitsRepository-> save($codeProduit, $libelle, $prixHA, $TVA, $prixTTC);

        return new JsonResponse(['status' => 'created!'], Response::HTTP_CREATED);
    }


    /**
     * @Route("/produits/{codeProduit}", name="deleteProduit", methods={"DELETE"})
     */
    public function delete($codeProduit): JsonResponse
    {
        $produits = $this->produitsRepository->findOneBy(['codeProduit' => $codeProduit]);

        $this->produitsRepository->remove($produits);

        return new JsonResponse(['status' => 'Customer deleted'], Response::HTTP_NO_CONTENT);
    }

    /**
     * @Route("/produits/{codeProduit}", name="getProduitByCode", methods={"GET"})
     */
    public function get($codeProduit): JsonResponse
    {
        $produit = $this->produitsRepository->findOneBy(['codeProduit' => $codeProduit]);

        $data[] = [
            //'id' => $produit->getId(),
            'codeProduit' => $produit->getCodeProduit(),
            'libelle' => $produit->getLibelle(),
            'prixHA' => $produit->getPrixHA(),
            'TVA' => $produit->getTVA(),
            'prixTTC' => $produit->getPrixTTC(),
        ];

        return new JsonResponse($data, Response::HTTP_OK);
    }

    /**
     * @Route("/produits/{codeProduit}/compositionsProduit", name="getCompoByProduit", methods={"GET"})
     */
    public function getCompos($codeProduit,Request $request): JsonResponse
    {
        $produit = $this->produitsRepository->findOneBy(['codeProduit' => $codeProduit]);

        $data = [];

        $compositions = $this->getCompositionbyCodeProduit($codeProduit);
       // return new JsonResponse($compositions);

        foreach ($compositions as $composition)
        {

            foreach($composition->getIdComposant() as $composant)
            {
                $data[] = [
                   "Composant"=> ['idComposant' => $composant->getIdComposant(),
                    'nomComp' => $composant->getNomComp(),
                    'unite' => $composant->getUnite(),
                   ],
                    'quantiteComp'=> $composition->getQuantiteComp(),
        ];
            }

        }
        return new JsonResponse($data, Response::HTTP_OK);
    }

    /**
     * @Route("/produits/{codeProduit}", name="updateProduit", methods={"PUT"})
     */
    public function update($codeProduit, Request $request): JsonResponse
    {
        $produits = $this->produitsRepository->findOneBy(['codeProduit' => $codeProduit]);
        $data = json_decode($request->getContent(), true);

        empty($data['codeProduit']) ? true : $produits->setCodeProduit($data['codeProduit']);
        empty($data['libelle']) ? true : $produits->setLibelle($data['libelle']);
        empty($data['prixHA']) ? true : $produits->setPrixHA($data['prixHA']);
        empty($data['TVA']) ? true : $produits->setTVA($data['TVA']);
        empty($data['prixTTC']) ? true : $produits->setPrixTTC($data['prixTTC']);

        $updated = $this->produitsRepository->update($produits);

        return new JsonResponse($updated->toArray(), Response::HTTP_OK);
    }

    public function getCompositionbyCodeProduit ($codeProduit)
    {
        $compositions = $this->compositionsRepository->findAll();

        foreach ($compositions as $composition) {

            $compositionArray = array();
            foreach ($composition->getCodeProduit() as $element) // going through products of this each composition
            {
                 if($codeProduit == $element->getCodeProduit()) // composition found that refers to this product
                     //TODO doesnt filter properly
                {
                    array_push($compositionArray,$composition );
                }
            }
        }
        return $compositionArray;
    }



}
