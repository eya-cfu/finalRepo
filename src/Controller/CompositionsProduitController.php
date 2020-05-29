<?php

namespace App\Controller;

use App\Repository\CompositionsProduitRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use Symfony\Component\Routing\Annotation\Route;

class CompositionsProduitController 
{
    private $compositionsProduitRepository;

    public function __construct(CompositionsProduitRepository $compositionsProduitRepository)
    {
        $this->compositionsProduitRepository = $compositionsProduitRepository;
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

        $codesProduits = $data['codeProduit'];
      //  $idComposition = $data['idComposition'];
        $quantiteComp = $data['quantiteComp'];
        $idComposants = $data['idComposant'];

        if (empty($codesProduits)  || empty($quantiteComp))
        {
            throw new NotFoundHttpException('Expecting mandatory parameters!');
        }
            // need to pass an array here
        $this->compositionsProduitRepository-> save( $quantiteComp,$idComposants ,$codesProduits);

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
