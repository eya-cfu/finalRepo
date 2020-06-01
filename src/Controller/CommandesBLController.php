<?php

namespace App\Controller;

use App\Entity\Boulangeries;
use App\Entity\CommandesBL;
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

        $this->queryBuilder =$this->em->createQueryBuilder();

    }


    /**
     * @Route("/commandesBL", name="get_all_commandes", methods={"GET"})
     */
    public function getAll(): JsonResponse
    {
        $commandesBLS = $this->commandesBLRepository->findAll();
        $data = [];

        foreach ($commandesBLS as $commandesBL) {
            $data[] = [
                'id' => $commandesBL->getId(),
                'creationDate' => $commandesBL->getCreationDate()->format('d-m-Y H-i'),
                'dueDate' => $commandesBL->getDueDate()->format('d-m-Y'),
                'idCommandeBL' => $commandesBL->getIdCommandeBL(),
                'etat' => $commandesBL->getEtat(),
                'matricule' => ($commandesBL->getLivreur()==null) ? null : $commandesBL->getLivreur()->getId(),
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

        $data[] = [
            //'id' => $commandesBL->getId(),
           'idCommandeBL' => $commandesBL->getIdCommandeBL(),
          'etat' => $commandesBL->getEtat(),
           'creationDate' => $commandesBL->getCreationDate()->format('d-m-Y H-i'),
          'dueDate' => $commandesBL->getDueDate()->format('d-m-Y'),
            'matricule' =>  ($commandesBL->getLivreur()==null) ? null : $commandesBL->getLivreur()->getId(),
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

        empty($data['etat']) ? true : $commandesBL->setEtat($data['etat']);
        empty($data['idCommandeBL']) ? true : $commandesBL->setIdCommandeBL($data['idCommandeBL']);
        empty($data['creationDate']) ? true : $commandesBL->setCreationDate($data['creationDate']);
        empty($data['dueDate']) ? true : $commandesBL->setDueDate($data['dueDate']);
        empty($data['matricule']) ? true : $commandesBL->setLivreur($data['matricule']);
        empty($data['idBoulangerie']) ? true : $commandesBL->setIdBoulangerie($data['idBoulangerie']);

        $updated = $this->commandesBLRepository->update($commandesBL);

        return new JsonResponse($updated->toArray(), Response::HTTP_OK);
    }

    /**
     * @Route("/commandesBL/{idCommandeBL}", name="deleteCommandeBL", methods={"DELETE"})

    public function delete($idCommandeBL): JsonResponse
    {
        $commandesBL = $this->commandesBLRepository->findOneBy(['idCommandeBL' => $idCommandeBL]);

        $this->commandesBLRepository->remove($commandesBL);

        return new JsonResponse(['status' => 'Customer deleted'], Response::HTTP_NO_CONTENT);
    }
     */

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

    //   return new JsonResponse($etat);
       // return new JsonResponse( $this->em->getClassMetadata(CommandesBL::class)->getFieldNames());

        $commandesBLS = $this->commandesBLRepository->findBy(['etat'=>$etat]);
     //   return new JsonResponse($commandesBLS[0]->getId());
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

        $commandesBLS = $this->commandesBLRepository -> findBy(['etat'=> $etat, 'livreur'=> $matricule]);

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

       // $commandesBLS = $this->commandesBLRepository -> findBy(['creationDate'=> $year]);

        $data = [];

       // foreach ($commandesBLS as $commandesBL) {
            $data[] = [
                 'count' => $count,
            ];
       // }

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
        $data = [];
        //$controllerDetail = new DetailsCommandesController($this->detailsCommandesBLRepository);

        foreach ($commandesBLS as $commandesBL) {

           $detailsCommandes = $this->getByIdCommande($commandesBL->getIdCommandeBL());
           // return new JsonResponse( $detailsCommandes,Response::HTTP_OK);

           // $data[] = [];

            $sum = 0 ;
            foreach ($detailsCommandes as $item) {
                $sum += $item ->getQuantiteProd();
            }

            //return new JsonResponse($sum);

            foreach ($detailsCommandes as $element)
            {
                foreach ($element->getCodeProduit() as $produit)
                {

                    $data[] = [
                        // 'id' => $commandesBL->getId(),
                        'codesProduit' => $produit->getCodeProduit(),
                        'libelle'=>$produit->getLibelle(),
                        'dueDate' => $commandesBL->getDueDate()->format('d-m-Y'),//'d-m-Y
                        'sumQuantite'=> $sum,
                    ];
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



}


