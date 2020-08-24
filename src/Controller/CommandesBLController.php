<?php

namespace App\Controller;

use App\Entity\Boulangeries;
use App\Entity\CommandesBL;
use App\Entity\CommandesLabo;
use App\Entity\DetailsCommandesBL;
use App\Entity\Livreurs;
use App\Entity\Produits;
use App\Entity\Profils;
use App\Repository\BoulangeriesRepository;
use App\Repository\CommandesBLRepository;
use App\Repository\LivreursRepository;
use App\Repository\ProfilsRepository;
use Cassandra\Date;
use DateTime;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\EntityManager;
use Doctrine\ORM\EntityManagerInterface;
use PhpParser\Node\Expr\Cast\Object_;
use Swagger\Server\Controller\DetailsCommandesBLController;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use Symfony\Component\Routing\Annotation\Route;
use App\Controller\DetailsCommandesController;

class CommandesBLController
{

    private $commandesBLRepository;
    private $boulangerieRepository;
    private $livreurRepository;
    private $profilRepository;
    private $detailsCommandesBLRepository;
    private $produitsRepository;
    private $commandeLaboRepository;

    private $em;
    private $queryBuilder;



    public function __construct(CommandesBLRepository $commandesBLRepository,EntityManagerInterface $entityManager)
    {

        $this->em= $entityManager;
        $this->commandesBLRepository = $commandesBLRepository;
        $this->boulangerieRepository = $this->em->getRepository(Boulangeries::class);
        $this->livreurRepository =$this->em->getRepository(Livreurs::class);
        $this->profilRepository = $this->em->getRepository(Profils::class);
        $this->detailsCommandesBLRepository = $this->em->getRepository(DetailsCommandesBL::class);
        $this->produitsRepository = $this->em->getRepository(Produits::class);
        $this->commandeLaboRepository = $this->em->getRepository(CommandesLabo::class);

        $this->queryBuilder =$this->em->createQueryBuilder();

    }

    /**
     * @Route("/commandesBL", name="get_all_commandes", methods={"GET"})
     */
    public function getAll(): JsonResponse
    {
        $commandesBLS = $this->commandesBLRepository->findAll();
        $data = [];
        if($commandesBLS == null)
            return new JsonResponse($data,Response::HTTP_OK);

        foreach ($commandesBLS as $commandesBL) {
            $data[] = [
                'id' => $commandesBL->getId(),
                'creationDate' => $commandesBL->getCreationDate()->format('d-m-Y H-i'),
                'dueDate' => $commandesBL->getDueDate()->format('d-m-Y'),
                'idCommandeBL' => $commandesBL->getIdCommandeBL(),
                'etat' => $commandesBL->getEtat(),
                'matricule' => ($commandesBL->getLivreur()==null) ? null : $commandesBL->getLivreur()->getMatricule()->getMatricule(),
                'idBoulangerie' => ($commandesBL->getIdBoulangerie()==null) ? null : $commandesBL->getIdBoulangerie()->getId(),
            ];
            //  $idLivreur = $commandesBL->getLivreur()->getId();
            //  return new JsonResponse($idLivreur);
            //  $data['matricule'] =$idLivreur;
        }

        return new JsonResponse($data, Response::HTTP_OK);
    }

    /**
     * @Route("/commandesBL", name="add_commandesBL", methods={"POST"})
     */
    public function add(Request $request): JsonResponse
    {
        $data = json_decode($request->getContent(), true);

        $idCommandeBL = $data['idCommandeBL'];
        $creationDate = $data['creationDate'];
        $dueDate = $data['dueDate'];
        $etat = $data['etat'];
        $livreur = $data['matricule'];
        $idBoulangerie = $data['idBoulangerie'];

        //return new JsonResponse($creationDate);
        //return new JsonResponse($request);
        // return new JsonResponse($data);

        //    if (empty($creationDate) || empty($dueDate))
        {
            //    throw new NotFoundHttpException('Expecting mandatory parameters!');
        }
        $dueDate2 = \DateTime::createFromFormat('d-m-Y', $dueDate);
        $creationDate2 = \DateTime::createFromFormat('d-m-Y H-i', $creationDate);

        $profil = $this->profilRepository->findOneBy(['matricule' => $livreur]);
        if(!empty($profil))
        {
            $livreur2 = $this->livreurRepository->findOneBy(['matricule' => $profil->getId()]);
        }
        else $livreur2 = null;


        $boulangerie2 = $this->boulangerieRepository->findOneBy(['id'=> $idBoulangerie]);

        $this->commandesBLRepository->save($idCommandeBL,$etat,$dueDate2,$creationDate2, $boulangerie2, $livreur2);//$dueDate2,$creationDate2

        return new JsonResponse(['status' => 'Commande created!'], Response::HTTP_CREATED);
    }


    /**
     * @Route("/commandesBL/ById/{idCommandeBL}", name="get_one_CommandesBL", methods={"GET"})
     */
    public function get($idCommandeBL): JsonResponse
    {
        // return new JsonResponse( $this->em->getClassMetadata(CommandesBL::class)->getFieldNames());

        $commandesBL = $this->commandesBLRepository->findOneBy(['idCommandeBL' => $idCommandeBL]);

        if($commandesBL == null){
            $data = [];
            return new JsonResponse($data,Response::HTTP_OK);
        }

        $data[] = [
            //'id' => $commandesBL->getId(),
            'idCommandeBL' => $commandesBL->getIdCommandeBL(),
            'etat' => $commandesBL->getEtat(),
            'creationDate' => $commandesBL->getCreationDate()->format('d-m-Y H-i'),
            'dueDate' => $commandesBL->getDueDate()->format('d-m-Y'),
            'matricule' =>  ($commandesBL->getLivreur()==null) ? null : $commandesBL->getLivreur()->getMatricule()->getMatricule(),
            'idBoulangerie' =>  ($commandesBL->getIdBoulangerie()==null) ? null : $commandesBL->getIdBoulangerie()->getId(),
        ];

        $jsonResp = json_encode($data[0],JSON_FORCE_OBJECT);
        $jsonDec = json_decode($jsonResp);
        return new JsonResponse($jsonDec, Response::HTTP_OK);
    }


    /**
     * @Route("/commandesBL/{idCommandeBL}", name="update_commandesBl", methods={"PATCH"})
     */
    public function update($idCommandeBL, Request $request): JsonResponse
    {
        $commandesBL = $this->commandesBLRepository->findOneBy(['idCommandeBL' => $idCommandeBL]);
        $data = json_decode($request->getContent(), true);

        if($commandesBL == null){
            $data = [];
            return new JsonResponse($data,Response::HTTP_OK);
        }

        empty($data['etat']) ? true : $commandesBL->setEtat($data['etat']);
        empty($data['idCommandeBL']) ? true : $commandesBL->setIdCommandeBL($data['idCommandeBL']);
        empty($data['creationDate']) ? true : $commandesBL->setCreationDate($data['creationDate']);
        empty($data['dueDate']) ? true : $commandesBL->setDueDate($data['dueDate']);
        /* $profil = $this->profilRepository->findOneBy(['matricule' => $data['matricule']]);
          $livreur = $this->livreurRepository->findOneBy(['matricule' => $profil->getId()]);
          if(empty($livreur))
          {
              throw new NotFoundHttpException('Invalid!');
          }
          $commandesBL->setLivreur($livreur);


          $boulangerie = $this->boulangerieRepository->findOneBy(['id' => $data['idBoulangerie']]);
          if(empty($boulangerie))
          {
              throw new NotFoundHttpException('Invalid Boulangerie!');
          }
          $commandesBL->setIdBoulangerie($boulangerie);

  */
        $updated = $this->commandesBLRepository->update($commandesBL);

        return new JsonResponse($updated->toArray(), Response::HTTP_OK);
    }

    
    /**
     * @Route("/commandesBL/{idCommandeBL}/identifyLivreur", name="updateLivreurofCommande", methods={"PATCH"})
     */
    public function updateLivreur($idCommandeBL, Request $request): JsonResponse
    {
        $commandesBL = $this->commandesBLRepository->findOneBy(['idCommandeBL' => $idCommandeBL]);
        $data = json_decode($request->getContent(), true);
        //   $queryParameter  = $request->query->get('matricule');

        //   $this->livreurRepository->findOneBy(['matricule'=>$queryParameter]);

        //  empty($data['etat']) ? true : $commandesBL->setEtat($data['etat']);
        // empty($data['idCommandeBL']) ? true : $commandesBL->setIdCommandeBL($data['idCommandeBL']);
        // empty($data['creationDate']) ? true : $commandesBL->setCreationDate($data['creationDate']);
        //// empty($data['dueDate']) ? true : $commandesBL->setDueDate($data['dueDate']);

        //    if( !empty($data['matricule'])) {
        $profil = $this->profilRepository->findOneBy(['matricule' => $data['matricule']]);
        $livreur = $this->livreurRepository->findOneBy(['matricule' => $profil->getId()]);
        if(empty($livreur))
        {
            throw new NotFoundHttpException('Invalid!');
        }
        $commandesBL->setLivreur($livreur);
        //  }

        // empty($data['idBoulangerie']) ? true : $commandesBL->setIdBoulangerie($data['idBoulangerie']);

        $updated = $this->commandesBLRepository->update($commandesBL);

        return new JsonResponse($updated->toArray(), Response::HTTP_OK);
    }


    /**
     * @Route("/commandesBL/getCmdsByEtat", name="getCmdsByEtat", methods={"GET"})
     */
    public function getCmdsByEtat(Request $request): JsonResponse
    {
        $etat =  $request->query->get('etat');
        $commandesBLS = $this->commandesBLRepository->findBy(['etat'=>$etat]);        
        

        $data = [];

        foreach ($commandesBLS as $commandesBL) {
            $data[] = [
                //'id' => $commandesBL->getId(),
                'idCommandeBL' =>  $commandesBL->getIdCommandeBL(),
                'etat' => $commandesBL->getEtat(),
                'creationDate' => $commandesBL->getCreationDate()->format('d-m-Y H-i'),
                'dueDate' => $commandesBL->getDueDate()->format('d-m-Y'),
                'idBoulangerie' =>  ($commandesBL->getIdBoulangerie()==null) ? null : $commandesBL->getIdBoulangerie()->getId(),
                'nomBL' =>  ($commandesBL->getIdBoulangerie()==null) ? null : $commandesBL->getIdBoulangerie()->getNomBoul(),
                'matricule' =>  ($commandesBL->getLivreur()==null|| $commandesBL->getLivreur()->getMatricule()==null) ? null
                    : $commandesBL->getLivreur()->getMatricule()->getMatricule(),
                'nom' =>($commandesBL->getLivreur()==null ||$commandesBL->getLivreur()->getMatricule()==null) ? null
                    :  $commandesBL->getLivreur()->getMatricule()->getNom(),
            ];
        }

      
        return new JsonResponse($data, Response::HTTP_OK);
    }


    /**
     * @Route("/commandesBL/getCmdsByEtatAndMatricule", name="getByEtatAndMatricule", methods={"GET"})
     */
    public function getByEtatAndMatricule(Request $request): JsonResponse
    {
        $etat = $request->query->get('etat');
        $matricule =  $request->query->get('matricule');

        $profil = $this->profilRepository->findOneBy(['matricule' => $matricule]);

        if($profil == null ){
            $data = [];
            return new JsonResponse($data,Response::HTTP_OK);
        }

        $livreur2 = $this->livreurRepository->findOneBy(['matricule' => $profil->getId()]);
        $commandesBLS = $this->commandesBLRepository -> findBy(['etat'=> $etat, 'livreur'=> $livreur2->getId()]);

        if($commandesBLS == null|| $livreur2 == null){
            $data = [];
            return new JsonResponse($data,Response::HTTP_OK);
        }


        $data = [];

        foreach ($commandesBLS as $commandesBL) {
            $data[] = [
                //   'id' => $commandesBL->getId(),
                'idCommandeBL' => $commandesBL->getIdCommandeBL(),
                'dueDate' => $commandesBL->getDueDate()->format('d-m-Y'),
                'creationDate' => $commandesBL->getCreationDate()->format('d-m-Y H-i'),
                'etat' => $commandesBL->getEtat(),
                'idBoulangerie' => ($commandesBL->getIdBoulangerie()==null) ? null : $commandesBL->getIdBoulangerie()->getId(),
                'matricule' => ($commandesBL->getLivreur()==null) ? null : $commandesBL->getLivreur()->getId(),

            ];
        }

        return new JsonResponse($data, Response::HTTP_OK);
    }

    /**
     * @Route("/commandesBL/getCount", name="getCount", methods={"GET"})
     */
    public function getCount(Request $request): JsonResponse
    {
        $now = new DateTime();
        $year = $now->format("Y");
        $yearDate = new DateTime($year.'-01-01');


        $count =   $this->commandesBLRepository->createQueryBuilder('u')
            ->select('count(u.id)')
            ->where('u.creationDate > :year' )->setParameter('year',$yearDate)
            ->getQuery()
            ->getSingleScalarResult();

        $data[] = [
            'count' => $count,
        ];
       
        if(empty($data) || $data[0]== null ){
            return new JsonResponse(0,Response::HTTP_OK);
        }

        $jsonResp = json_encode($data[0],JSON_FORCE_OBJECT);
        $jsonDec = json_decode($jsonResp);
        return new JsonResponse($jsonDec, Response::HTTP_OK);
    }


    /**
     * @Route("/commandesBL/getCmdsForLab", name="getCmdsForLab", methods={"GET"})
     */
    public function getCmdsForLab(Request $request): JsonResponse
    {
        $etat =  $request->query->get('etat');

        $commandesBLS = $this->commandesBLRepository->findBy(['etat'=>$etat]);
        $produits = $this->produitsRepository->findAll();

        if($commandesBLS == null|| $produits==null){
            $data = [];
            return new JsonResponse($data,Response::HTTP_OK);
        }

        $data = [];
        //$controllerDetail = new DetailsCommandesController($this->detailsCommandesBLRepository);
        $totalsum = 0;

        $dateList = array();

        foreach ($commandesBLS as $commandesBL) {

            //  $detailsCommandesByDate = $this->getByDueDateAndPushProduits($commandesBL->getDueDate()->format('d-m-Y'));
            if(!in_array($commandesBL->getDueDate()->format('d-m-Y'),$dateList))
            { $detailsCommandesByDate = $this->getByDueDate($commandesBL->getDueDate()->format('d-m-Y'));

                //return new JsonResponse( $detailsCommandesByDate,Response::HTTP_OK);
                //   $data[] = ['date'=>$detailsCommandesByDate];

                array_push($dateList,$commandesBL->getDueDate()->format('d-m-Y'));

                // need to get all commandes for a specific date
                // then need to get how many produits are for that date and group that quantity
                //under one product


                //return new JsonResponse($sum);

                //foreach ($detailsCommandesByDate as $element)
                //  {


                foreach ($produits as $produit) {

                    $detailsCommandesByProduitAndByDate = $this->getByCodeProduit($produit->getCodeProduit(), $detailsCommandesByDate);

                    // return new JsonResponse(sizeof($detailsCommandesByProduitAndByDate));

                    $sum = 0 ;

                    foreach ($detailsCommandesByProduitAndByDate as $item) {
                        $sum += $item->getQuantiteProd();
                    }
                    // $data[] = ['produits'=>$detailsCommandesByProduitAndByDate,'dueDate'=>$commandesBL->getDueDate()->format('d-m-Y')];


                    // NEED TO CHECK IF ITS IN COMMANDELABO
                   // if($sum!= 0 && !$this->checkIfInLabo($produit->getCodeProduit(),$commandesBL->getDueDate()->format('d-m-Y'))) {
                        //$totalsum += $sum;
                        $data[] = [
                            //  'id' => $commandesBL->getId(),
                            //'idDetail' => $element->getId(),
                            'codeProduit' => $produit->getCodeProduit(),
                            'libelle' => $produit->getLibelle(),
                            // 'commande' => $commandesBL->getId(),
                            'dueDate' => $commandesBL->getDueDate()->format('d-m-Y'),//'d-m-Y
                            'sumQuantite' => $sum,
                            //'totalsum' => $totalsum
                        ];
                        // */
                   // }

                    //  return new JsonResponse($detailsCommandesByProduitAndByDate);

                }

            }

        }
        return new JsonResponse($data, Response::HTTP_OK);
    }

    /**
     * @Route("/commandesBL/getCmdsbyEtatAndBoulangerieID", name="getCmdsByEtatandBOul", methods={"GET"})
     */
    public function getCmdsByEtatAndBoulangerieID(Request $request): JsonResponse
    {
        $etat = $request->query->get('etat');
        $idBoulangerie =  $request->query->get('idBoulangerie');

        // return new JsonResponse( $this->em->getClassMetadata(CommandesBL::class)->getFieldNames());

        $commandesBLS = $this->commandesBLRepository
            ->findBy(['etat'=> $etat]);

        if($commandesBLS == null){
            $data = [];
            return new JsonResponse($data,Response::HTTP_OK);
        }

        $data = [];

        foreach ($commandesBLS as $commandesBL) {
            if($commandesBL->getIdBoulangerie()->getId()==$idBoulangerie) {
                $data[] = [
                    'id' => $commandesBL->getId(),
                    'idCommandeBL' => $commandesBL->getIdCommandeBL(),
                    'dueDate' => $commandesBL->getDueDate()->format('d-m-Y'),
                    'creationDate' => $commandesBL->getCreationDate()->format('d-m-Y H-i'),
                    'etat' => $commandesBL->getEtat(),
                    'idBoulangerie' => ($commandesBL->getIdBoulangerie() == null) ? null : $commandesBL->getIdBoulangerie()->getId(),
                    'matricule' => ($commandesBL->getLivreur() == null) ? null : $commandesBL->getLivreur()->getId(),
                ];
            }
        }
        //dd-MM-yyyy'T'hh:mm
        return new JsonResponse($data, Response::HTTP_OK);
    }


    /**
     * @Route("/commandesBL/{idCommandeBL}/detailsCmdBL", name="getDetailsForCommandes", methods={"GET"})
     */
    public function getDetailsCommandesForCommandes($idCommandeBL,Request $request): JsonResponse
    {
        $commandesBLS = $this->commandesBLRepository->findBy(['idCommandeBL'=>$idCommandeBL]);

        if($commandesBLS == null){
            $data = [];
            return new JsonResponse($data,Response::HTTP_OK);
        }


        foreach ($commandesBLS as $commandesBL) {

            $detailsCommandes = $this->getByIdCommande($commandesBL->getIdCommandeBL());
            //return new JsonResponse($detailsCommandes);

            //get all details for this specific commande and go through their products
            foreach ($detailsCommandes as $element)
            {
                //make a list of their products only taking their codes, labels and their quantity
                foreach ($element->getCodeProduit() as $produit)
                {

                    $data[] = [
                        //  'idCommandeBL' => $commandesBL->getIdCommandeBL(),
                        'codeProduit' => $produit->getCodeProduit(),
                        'libelle'=> $produit->getLibelle(),
                        'quantite'=> $element->getQuantiteProd(),
                        //'idDetail' =>$element->getIdDetail()
                    ];
                }


            }
        }

        return new JsonResponse($data, Response::HTTP_OK);
    }


    public function getByIdCommande ($idCommandeBL)
    {
        $detailsCommandesBLS = $this->detailsCommandesBLRepository->findAll();

        if($detailsCommandesBLS == null){
            $data = [];
            return new JsonResponse($data,Response::HTTP_OK);
        }

        $detailsForCommands = array();
        foreach ($detailsCommandesBLS as $detailsCommandesBL) {



            foreach ($detailsCommandesBL->getIdCommandeBL() as $element)
            {
                // array_push($detailsForCommands,$element->getIdCommandeBL() );
                if($idCommandeBL == $element->getIdCommandeBL())
                {
                    array_push($detailsForCommands,$detailsCommandesBL );
                    //array_push($detailsForCommands,$element->getIdCommandeBL());
                    //array_push($detailsForCommands,$idCommandeBL);
                }
            }

        }

        return $detailsForCommands;
    }

    public function getByDueDate ($dueDate)
    {
        $detailsCommandesBLS = $this->detailsCommandesBLRepository->findAll();
        $detailsForCommands = array();
        foreach ($detailsCommandesBLS as $detailsCommandesBL) {

            foreach ($detailsCommandesBL->getIdCommandeBL() as $element)
            {
                //  array_push($detailsForCommands,$element->getDueDate()->format('d-m-Y'));
                if($dueDate == $element->getDueDate()->format('d-m-Y')) {
                    if (!in_array($detailsCommandesBL, $detailsForCommands)) {
                        array_push($detailsForCommands,$detailsCommandesBL );
                        // array_push($detailsForCommands,$element->getDueDate()->format('d-m-Y'));
                        // array_push($detailsForCommands, $detailsCommandesBL->getId());
                    }
                }
            }

        }

        return $detailsForCommands;
    }

    public function getByDueDateAndPushProduits ($dueDate)
    {
        $detailsCommandesBLS = $this->detailsCommandesBLRepository->findAll();
        if($detailsCommandesBLS == null){
            $data = [];
            return new JsonResponse($data,Response::HTTP_OK);
        }
        $detailsForCommands = array();
        foreach ($detailsCommandesBLS as $detailsCommandesBL) {

            foreach ($detailsCommandesBL->getIdCommandeBL() as $element)
            {
                //  array_push($detailsForCommands,$element->getDueDate()->format('d-m-Y'));
                if($dueDate == $element->getDueDate()->format('d-m-Y'))
                {
                    foreach( $detailsCommandesBL->getCodeProduit() as $produit) {
                        array_push($detailsForCommands,$produit ->getCodeProduit());
                        //array_push($detailsForCommands,$idCommandeBL);
                    }
                }
            }

        }

        return $detailsForCommands;
    }



    public function getByCodeProduit ($codeProduit,$details)
    {
        $detailsCommandesBLS = $details;
        $detailsForCommands = array();
        foreach ($detailsCommandesBLS as $detailsCommandesBL) {

            foreach ($detailsCommandesBL->getCodeProduit() as $element)
            {
                //  array_push($detailsForCommands,$element->getDueDate()->format('d-m-Y'));
                if($codeProduit == $element->getCodeProduit())
                {
                    array_push($detailsForCommands,$detailsCommandesBL );
                    // array_push($detailsForCommands,$element->getCodeProduit());
                    //array_push($detailsForCommands,$idCommandeBL);
                }
            }

        }

        return $detailsForCommands;
    }

    public function checkIfInLabo ($codeProduit, $dueDate)
    {
        $commandesLabo = $this->commandeLaboRepository->findAll();

        foreach ($commandesLabo as $commandeLabo) {
            if($commandeLabo->getCodeProduit() == $codeProduit || $commandeLabo->getDueDate()->format('d-m-Y')==$dueDate)
            {
                return true;
            }

        }
        return false;
    }


}






//

//GETCMDSFORLAB DISCARDED CODE
// foreach ($detailsCommandesByProduitAndByDate as $item) {
//     $sum += $item ->getQuantiteProd();
//  }
// stil not right
// foreach ($detailsCommandesByProduitAndByDate as $detail) {
/*
 *    $data[] = [
       //  'id' => $commandesBL->getId(),
       'idDetail' => $element->getId(),
       'codeProduit' => $produit->getCodeProduit(),
       'libelle' => $produit->getLibelle(),
       'dueDate' => $commandesBL->getDueDate()->format('d-m-Y'),//'d-m-Y
       'sumQuantite' => $sum,
 *
   $data[] = [
       //  'id' => $commandesBL->getId(),
       'idDetail' => $element->getId(),
       'codeProduit' => $produit->getCodeProduit(),
       'commandesBl' => $commandesBL->getDueDate()->format('d-m-Y'),
     //  'dueDate' => $commandesBL->getDueDate()->format('d-m-Y'),//'d-m-Y
       'sumQuantite' => $sum,

   ];

//}
//  } */
//  }
