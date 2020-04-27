<?php

namespace App\Controller;

use App\Entity\Profils;
use App\Repository\BoulangeriesRepository;
use App\Repository\ProfilsRepository;
use Doctrine\ORM\EntityManager;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use Symfony\Component\Routing\Annotation\Route;

class BoulangeriesController
{

    private $boulangerieRepository;
    private $profilsRepository;
    private $em;


    public function __construct(BoulangeriesRepository $boulangeriesRepository,EntityManagerInterface $entityManager)
    {
        $this->em= $entityManager;
        $this->boulangerieRepository = $boulangeriesRepository;
        $this->profilsRepository = $this->em->getRepository(Profils::class);

    }

    /**
     * @Route("/boulangeries", name="add_boulangerie", methods={"POST"})
     */
    public function add(Request $request): JsonResponse
    {

        $data = json_decode($request->getContent(), true);

       // $idBoulangerie = $data['idBoulangerie'];
        $addresse = $data['adresse'];
        $nbOperateurs = $data['nbOperateurs'];
        $nomBL = $data['nomBL'];
        $telephone = $data['telephone'];
        $matricule = $data['matricule'];

       // return new JsonResponse($matricule);
        // return new JsonResponse($request);
        //  return new JsonResponse($data);

        if ( empty($addresse) || empty($nbOperateurs) || empty($telephone))
        {
            throw new NotFoundHttpException('Expecting mandatory parameters!');
        }

        $responsable2 = $this->profilsRepository->findOneBy(['matricule' => $matricule]);

        $this->boulangerieRepository->save( $addresse, $nbOperateurs, $nomBL,$telephone, $responsable2);

        return new JsonResponse(['status' => 'created!'], Response::HTTP_CREATED);
    }

    /**
     * @Route("/boulangeries/{matricule}", name="get_one_boulangerie", methods={"GET"})
     */
    public function get($matricule): JsonResponse
    {
       $boulangeries = $this->boulangerieRepository->findOneBy(['matricule' => $matricule]);

        $data[] = [
            //'id' => $boulangeries->getId(),
            'id_Boulangerie' => $boulangeries->getIdBoulangerie(),
            'nomBL' => $boulangeries->getNomBoul(),
            'adresse' => $boulangeries->getAdresse(),
            'telephone' => $boulangeries->getTelephone(),
            'matricule' => $boulangeries->getMatricule()->getMatricule(),
            'nbOperateurs' => $boulangeries->getNbOperateurs(),
        ];

        return new JsonResponse($data, Response::HTTP_OK);
    }

    /**
     * @Route("/boulangeries/ById/{idBoulangerie}", name="get_one_boulangerieById", methods={"GET"})
     */
    public function getById($idBoulangerie): JsonResponse
    {
        $boulangeries = $this->boulangerieRepository->findOneBy(['id' => $idBoulangerie]);
       // return new JsonResponse($boulangeries);

        $data[] = [

            'id_Boulangerie' => $boulangeries->getIdBoulangerie(),
            'nomBL' => $boulangeries->getNomBoul(),
            'adresse' => $boulangeries->getAdresse(),
            'telephone' => $boulangeries->getTelephone(),
            'matricule' => $boulangeries->getMatricule()->getMatricule(),
            'nbOperateurs' => $boulangeries->getNbOperateurs(),
        ];

        return new JsonResponse($data, Response::HTTP_OK);
    }

    /**
     * @Route("/boulangeries", name="get_all_boulangeries", methods={"GET"})
     */
    public function getAll(): JsonResponse
    {
        $boulangeries = $this->boulangerieRepository->findAll();
        $data = [];

        foreach ($boulangeries as $boulangerie) {
            $data[] = [
                //'id' => $boulangerie->getId(),
                'id_Boulangerie' => $boulangerie->getIdBoulangerie(),
                'nomBL' => $boulangerie->getNomBoul(),
                'adresse' => $boulangerie->getAdresse(),
                'telephone' => $boulangerie->getTelephone(),
                'matricule' => $boulangerie->getMatricule()->getMatricule(),
                'nbOperateurs' => $boulangerie->getNbOperateurs(),
            ];
        }

        return new JsonResponse($data, Response::HTTP_OK);
    }

    /**
     * @Route("/boulangeries/ById/{idBoulangerie}", name="update_boulan", methods={"PUT"})
     */
    public function update($idBoulangerie, Request $request): JsonResponse
    {
        $boulangeries = $this->boulangerieRepository->findOneBy(['idBoulangerie' => $idBoulangerie]);
        $data = json_decode($request->getContent(), true);

      //  empty($data['idBoulangerie']) ? true : $boulangeries->setIdBoulangerie($data['idBoulangerie']);
        empty($data['responsable']) ? true : $boulangeries->setMatricule($data['responsable']);
        empty($data['nbOperateurs']) ? true : $boulangeries->setNbOperateurs($data['nbOperateurs']);
        empty($data['adresse']) ? true : $boulangeries->setAdresse($data['adresse']);
        empty($data['telephone']) ? true : $boulangeries->setTelephone($data['telephone']);
        empty($data['nomBL']) ? true : $boulangeries->setNomBoul($data['nomBL']);

        $updated = $this->boulangerieRepository->update($boulangeries);

        return new JsonResponse($updated->toArray(), Response::HTTP_OK);
    }


    /**
     * @Route("/boulangeries/ById/{idBoulangerie}", name="delete_boulangerie", methods={"DELETE"})
     */
    public function delete($idBoulangerie): JsonResponse
    {
        $boulangeries = $this->boulangerieRepository->findOneBy(['id' => $idBoulangerie]);

        $this->boulangerieRepository->remove($boulangeries);

        return new JsonResponse(['status' => 'Customer deleted'], Response::HTTP_NO_CONTENT);
    }


}
