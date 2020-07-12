<?php

namespace App\Controller;

use App\Entity\Composants;
use App\Entity\Produits;
use App\Repository\CompositionsProduitRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use Symfony\Component\Routing\Annotation\Route;

class CompositionsProduitController 
{
    private $compositionsProduitRepository;
    private $produitsRepository;
    private $composantsRepository;
    private $em;

    public function __construct(CompositionsProduitRepository $compositionsProduitRepository,EntityManagerInterface $entityManager)
    {
        $this->compositionsProduitRepository = $compositionsProduitRepository;
        $this->em= $entityManager;
        $this->produitsRepository = $this->em->getRepository(Produits::class);
        $this->composantsRepository = $this->em->getRepository(Composants::class);

    }


    /**
     * @Route("/compositionsProduit", name="getCompositionsProduit", methods={"GET"})
     */
    public function getAll(): JsonResponse
    {
        $compositionsProduits = $this->compositionsProduitRepository->findAll();

        $data = [];


        foreach ($compositionsProduits as $compositionsProduit) {

            // this loop assumes that each codeProduit has a idComposant or it wont work
            for($i = 0 ; $i < sizeof($compositionsProduit->getCodeProduit()); $i++ )
            {
                    $data[] = [
                        'idComposition' => $compositionsProduit->getIdComposition(),
                        'idComposant' => ($compositionsProduit->getIdComposant()[$i] == null) ? null :
                            $compositionsProduit->getIdComposant()[$i]->getIdComposant(),
                        'codeProduit' => $compositionsProduit->getCodeProduit()[$i]->getCodeProduit(),
                        'quantiteComp' => $compositionsProduit->getQuantiteComp(),
                    ];
                }

            }


        return new JsonResponse($data, Response::HTTP_OK);
    }

    /**
     * @Route("/compositionsProduit", name="addCompoProduit", methods={"POST"})
     */
    public function add(Request $request): JsonResponse
    {

        $data = json_decode($request->getContent(), true);
      //  return new JsonResponse($data);

        $codesProduits = $data['codeProduit'];
      //  $idComposition = $data['idComposition'];
        $quantiteComp = $data['quantiteComp'];
        $idComposants = $data['idComposant'];

      // if (empty($codesProduits)  || empty($quantiteComp))
        {
        //    throw new NotFoundHttpException('Expecting mandatory parameters!');
        }
            // need to pass an array here
        $codesProduitsObjects = array();
        $composantsObjects = array();
        foreach ($codesProduits as $codeProduit)
        {
            $produit = $this->produitsRepository->findOneBy(['id'=>$codeProduit ]);
            if(empty($produit))
            {
                throw new NotFoundHttpException('Produit Not Found!');
            }
           array_push($codesProduitsObjects, $produit);
        }

        foreach ($idComposants as $idComposant)
        {
            $composant = $this->composantsRepository->findOneBy(['idComposant'=>$idComposant ]);
            if(empty($composant))
            {
                throw new NotFoundHttpException('Composant Not Found!');
            }
            array_push($composantsObjects, $composant);
        }

        $this->compositionsProduitRepository-> save( $quantiteComp,$composantsObjects ,$codesProduitsObjects);

        return new JsonResponse(['status' => 'created!'], Response::HTTP_CREATED);
    }


    /**
     * @Route("/compositionsProduit/{idComposition}", name="deleteCompoProduit", methods={"DELETE"})
     */
    public function delete($idComposition): JsonResponse
    {
        $compositionsProduit = $this->compositionsProduitRepository->findOneBy(['id' => $idComposition]);

        $this->compositionsProduitRepository->remove($compositionsProduit);

        return new JsonResponse(['status' => 'Customer deleted'], Response::HTTP_NO_CONTENT);
    }

    /**
     * @Route("/compositionsProduit/findByProduitAndComposant", name="deleteFindByCompo", methods={"DELETE"})
     */
    public function deleteByProduit(Request $request): JsonResponse
    {
        $compositionsProduits = $this->compositionsProduitRepository->findAll();

          $codeProduit=   $request->query->get('codeProduit');
          $idComposant =   $request->query->get('idComposant');

        foreach ($compositionsProduits as $compositionsProduit)
        {
            foreach($compositionsProduit->getIdComposant() as $composant)
            {
                //removing the composant from the list
                if($composant->getIdComposant() == $idComposant)
                {
                    $compositionsProduit->removeIdComposant($composant);
                }
            }

            foreach($compositionsProduit->getCodeProduit() as $produit)
            {
                //removing the product from the list
                if($produit->getCodeProduit() == $codeProduit)
                {
                    $compositionsProduit->removeCodeProduit($produit);

                }
            }
        }

        return new JsonResponse(['status' => 'Customer deleted'], Response::HTTP_NO_CONTENT);
    }

}
