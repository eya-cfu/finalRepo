<?php

namespace App\Controller;

use App\Entity\DetailsCommandesBL;
use App\Repository\DetailsCommandesBLRepository;
use phpDocumentor\Reflection\Types\Array_;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Validator\Constraints\Collection;

class DetailsCommandesController
{
    private $detailsCommandesRepository;

    public function __construct(DetailsCommandesBLRepository $detailsCommandesBLRepository)
    {
        $this->detailsCommandesRepository = $detailsCommandesBLRepository;
    }


    /**
     * @Route("/detailsCommandesBL", name="getDetailsCommandesBL", methods={"GET"})
     */
    public function getAll(): JsonResponse
    {
        $detailsCommandesBLS = $this->detailsCommandesRepository->findAll();
        $data = [];

        foreach ($detailsCommandesBLS as $detailsCommandesBL) {
            $codesProduit = array();
            $idsCommandeBL = array();
            foreach ($detailsCommandesBL->getCodeProduit() as $element)
            {
                array_push($codesProduit,$element->getId());
            }
            foreach ($detailsCommandesBL->getIdCommandeBL() as $element)
            {
                array_push($idsCommandeBL,$element->getId());
            }

            $data[] = [
                'id' => $detailsCommandesBL->getId(),
                'codeProduit' => $codesProduit, //$detailsCommandesBL->getCodeProduit()[0]->getCodeProduit(),
                'idCommandeBL' => $idsCommandeBL, //$detailsCommandesBL->getIdCommandeBL()[0]->getIdCommandeBL(),
                'idDetail' => $detailsCommandesBL->getIdDetail(),
                'quantiteProd' => $detailsCommandesBL->getQuantiteProd(),
            ];
        }

        return new JsonResponse($data, Response::HTTP_OK);
    }


    /**
     * @Route("/detailsCommandesBL", name="addDetailsCmd", methods={"POST"})
     */
    public function add(Request $request): JsonResponse
    {

        $data = json_decode($request->getContent(), true);

        $codesProduits = $data['codeProduit'];
      //  $idDetail = $data['idDetail'];
        $quantiteProd = $data['quantiteProd'];
        $idCommandesBLs = $data['idCommandeBL'];

        if (empty($codesProduits) || empty($quantiteProd))
        {
            throw new NotFoundHttpException('Expecting mandatory parameters!');
        }
        // arrays need to be read
        $this->detailsCommandesRepository-> save($quantiteProd,$idCommandesBLs,$codesProduits);

        return new JsonResponse(['status' => 'created!'], Response::HTTP_CREATED);
    }


    /**
     * @Route("/detailsCommandesBL/{idDetail}", name="deleteDetailsCmd", methods={"DELETE"})

    public function delete($idDetail): JsonResponse
    {
        $detailsCommandesBL = $this->detailsCommandesRepository->findOneBy(['id' => $idDetail]);

        $this->detailsCommandesRepository->remove($detailsCommandesBL);

        return new JsonResponse(['status' => 'Customer deleted'], Response::HTTP_NO_CONTENT);
    }
     */

    /**
     * @Route("/detailsCommandesBL/findByProduitAndDate", name="getDetailsByCodeAndDate", methods={"GET"})
     */
    public function get(Request $request): JsonResponse
    {
        // all detailsCommandes
        $detailsCommandes = $this->detailsCommandesRepository->findAll();

        // query parameters
        $codeProduit = $request->query->get('codeProduit');
        $dueDate =  $request->query->get('dueDate');

        $data[] =[];

        // for every detail we need to go through and display the specific produit
        foreach ($detailsCommandes as $detail) {

            // this loop assumes that each codeProduit has a idCommande or it wont work
            for($i = 0 ; $i < sizeof($detail->getCodeProduit()); $i++ )
            {
                //need to compare the code again so we only get the product we need, basically sequential search
                if($detail->getCodeProduit()[$i]->getCodeProduit()==$codeProduit
                   && $detail->getIdCommandeBL()[$i]->getDueDate()->format('Y-m-d') == $dueDate)
                {
                    $data[] = [
                        'idDetail' => $detail->getIdDetail(),
                        'codeProduit' => $detail->getCodeProduit()[$i]->getCodeProduit(),
                        'idCommandeBL' => $detail->getIdCommandeBL()[$i]->getIdCommandeBL(),
                        'quantiteProd' => $detail->getQuantiteProd(),
                                ];
                    //break so it only returns one element
                    //break;
                }
            }
        }

        return new JsonResponse($data, Response::HTTP_OK);
    }

    /**
     * @Route("/detailsCommandesBL/{idDetail}", name="updateDetail", methods={"PATCH"})
     */
    public function update($idDetail, Request $request): JsonResponse
    {
        $detailsCommandesBL = $this->detailsCommandesRepository->findOneBy(['id' => $idDetail]);
        $data = json_decode($request->getContent(), true);

      //  empty($data['idDetail']) ? true : $detailsCommandesBL->setIdDetail($data['idDetail']);
        empty($data['quantiteProd']) ? true : $detailsCommandesBL->setQuantiteProd($data['quantiteProd']);

       if(! empty($data['codeProduit']) ) {
           foreach ($data['codeProduit'] as $codeProduit)
           {
               $detailsCommandesBL->addCodeProduit($codeProduit);
           }
        }

        if(!empty($data['idCommandeBL']))
        {
            foreach ($data['idCommandeBL'] as $idCommandeBL) {
                $detailsCommandesBL->addIdCommandeBL($idCommandeBL);
            }
        }


        $updated = $this->detailsCommandesRepository->update($detailsCommandesBL);

        return new JsonResponse($updated->toArray(), Response::HTTP_OK);
    }


    public function getSum(array $detailcommandesBL)
    {   $sum = 0 ;

        foreach ($detailcommandesBL as $item) {
           $sum += $item ->getQuantiteProd();
        }
        return $sum;
    }

}


//        //result of filtering codeProduit
//        $detailsforProduit = array();
//
//        // used for sequential search which is done twice here
//        $rightDate = false;
//        $rightProduct = false;
//
//        //going through all detail to find the one that contains the product and the date
//      foreach ($detailsCommandes as $detailsCommande)
//        {
//            foreach($detailsCommande->getIdCommandeBL() as $commandesBL)
//            {
//               // comparison needs to be formatted
//                if($commandesBL->getDueDate()->format('Y-m-d') == $dueDate)
//                {
//                    //found the dueDate in the list of this detail
//                    $rightDate = true;
//                    // only need to find it once
//                    break ;
//                }
//            }
//
//            foreach($detailsCommande->getCodeProduit() as $produit)
//            {
//                if($produit->getCodeProduit() == $codeProduit)
//                {
//                    // found the product in the list of this detail
//                    $rightProduct = true;
//                    break ;
//                }
//            }
//
//            //detail references a commandeBL and a product with the right dueDate and codeProduit
//            if($rightProduct &&$rightDate)
//            {
//                // add it to an array of results
//                array_push($detailsforProduit,$detailsCommande);
//
//                //reset the values so we dont get details that dont verify
//                $rightProduct = false;
//                $rightDate= false;
//           }
//        }
