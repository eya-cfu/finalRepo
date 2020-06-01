<?php

namespace App\Controller;

use App\Entity\Profils;
use App\Repository\LivreursRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use Symfony\Component\Routing\Annotation\Route;

class LivreursController
{

    private $livreurRepository;
    private $profilsRepository;
    private $em ;

    public function __construct(LivreursRepository $livreursRepository,EntityManagerInterface $entityManager)
    {
        $this->livreurRepository = $livreursRepository;
        $this->em = $entityManager;

        $this->profilsRepository = $this->em->getRepository(Profils::class);

    }


    /**
     * @Route("/livreurs", name="get_all_livreur", methods={"GET"})
     */
    public function getAll(): JsonResponse
    {
        $livreurs = $this->livreurRepository->findAll();
        $data = [];

        foreach ($livreurs as $livreur) {
            $data[] = [
                'nom' => $livreur->getMatricule()->getNom(),
                'livreur' =>[
                    'matricule' => $livreur->getMatricule()->getMatricule(),
                    'numVehicule' => $livreur->getNumVehicule(),
                    'teleLivreur' => $livreur->getTeleLivreur(),]
            ];
        }
        // "nom": "string",
        //    "livreur": {
        //      "matricule": 0,
        //      "teleLivreur": 0,
        //      "numVehicule": "string"
        //    }

        return new JsonResponse($data, Response::HTTP_OK);
    }

    /**
     * @Route("/livreurs", name="addLivreur", methods={"POST"})
     */
    public function add(Request $request): JsonResponse
    {

        $data = json_decode($request->getContent(), true);

        $numVehicule = $data['numVehicule'];
        $teleLivreur = $data['teleLivreur'];
        $matricule = $data['matricule'];

        if (empty($numVehicule) || empty($teleLivreur) || empty($matricule))
       {
            throw new NotFoundHttpException('Expecting mandatory parameters!');
        }

        $matricule2 = $this->profilsRepository->findOneBy(['matricule' => $matricule]);

        $this->livreurRepository-> save($numVehicule, $teleLivreur, $matricule2);

        return new JsonResponse(['status' => 'created!'], Response::HTTP_CREATED);
    }


    /**
     * @Route("/livreurs/{matricule}", name="deleteLivreurs", methods={"DELETE"})
     */
    public function delete($matricule): JsonResponse
    {
        $profil = $this->profilsRepository->findOneBy(['matricule' => $matricule]);
        $livreurs = $this->livreurRepository->findOneBy(['matricule' => $profil->getId()]);

        $this->livreurRepository->remove($livreurs);

        return new JsonResponse(['status' => 'Customer deleted'], Response::HTTP_NO_CONTENT);
    }

    /**
     * @Route("/livreurs/{matricule}", name="getLivreurByMatricule", methods={"GET"})
     */
    public function get($matricule): JsonResponse
    {
        $profil = $this->profilsRepository->findOneBy(['matricule' => $matricule]);
        $livreurs = $this->livreurRepository->findOneBy(['matricule' => $profil->getId()]);

        $data[] = [
            'matricule' => $livreurs->getMatricule()->getMatricule(),
            'numVehicule' => $livreurs->getNumVehicule(),
            'teleLivreur' => $livreurs->getTeleLivreur(),
            // "matricule": 0,
            //  "teleLivreur": 0,
            //  "numVehicule": "string"
        ];

        $jsonResp = json_encode($data[0],JSON_FORCE_OBJECT);
        $jsonDec = json_decode($jsonResp);
        return new JsonResponse($jsonDec, Response::HTTP_OK);
    }

    /**
     * @Route("/livreurs/{matricule}", name="updateLivreur", methods={"PUT"})
     */
    public function update($matricule, Request $request): JsonResponse
    {
        $profil = $this->profilsRepository->findOneBy(['matricule' => $matricule]);
        $livreurs = $this->livreurRepository->findOneBy(['matricule' => $profil->getId()]);

        $data = json_decode($request->getContent(), true);

        $profil = $this->profilsRepository->findOneBy(['matricule' => $data['matricule']]);

        if(empty($profil))
        {
            throw new NotFoundHttpException('Invalid!');
        }
        $livreurs->setMatricule($profil);
        //  }

        empty($data['numVehicule']) ? true : $livreurs->setNumVehicule($data['numVehicule']);
        empty($data['teleLivreur']) ? true : $livreurs->setTeleLivreur($data['teleLivreur']);

        $updated = $this->livreurRepository->update($livreurs);

        return new JsonResponse($updated->toArray(), Response::HTTP_OK);
    }

}
