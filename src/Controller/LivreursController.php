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
                'id' => $livreur->getId(),
                'matricule' => $livreur->getMatricule()->getMatricule(),
                'teleLivreur' => $livreur->getTeleLivreur(),
                'numVehicule' => $livreur->getNumVehicule()
            ];
        }

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

        $this->livreurRepository-> save($numVehicule, $teleLivreur, $matricule);

        return new JsonResponse(['status' => 'created!'], Response::HTTP_CREATED);
    }


    /**
     * @Route("/livreurs/{matricule}", name="deleteLivreurs", methods={"DELETE"})
     */
    public function delete($matricule): JsonResponse
    {
        $livreurs = $this->livreurRepository->findOneBy(['matricule' => $matricule]);

        $this->livreurRepository->remove($livreurs);

        return new JsonResponse(['status' => 'Customer deleted'], Response::HTTP_NO_CONTENT);
    }

    /**
     * @Route("/livreurs/{matricule}", name="getLivreurByMatricule", methods={"GET"})
     */
    public function get($matricule): JsonResponse
    {
        $livreurs = $this->livreurRepository->findOneBy(['matricule' => $matricule]);


        $data[] = [
            //'id' => $livreurs->getId(),
            'nom' => $livreurs->getMatricule()->getNom(),
            'livreur' =>[
            'matricule' => $livreurs->getMatricule()->getMatricule(),
            'numVehicule' => $livreurs->getNumVehicule(),
            'teleLivreur' => $livreurs->getTeleLivreur(),]
        ];

        return new JsonResponse($data, Response::HTTP_OK);
    }

    /**
     * @Route("/livreurs/{matricule}", name="updateLivreur", methods={"PUT"})
     */
    public function update($matricule, Request $request): JsonResponse
    {
        $livreurs = $this->livreurRepository->findOneBy(['matricule' => $matricule]);
        $data = json_decode($request->getContent(), true);

        empty($data['matricule']) ? true : $livreurs->setMatricule($data['matricule']);
        empty($data['numVehicule']) ? true : $livreurs->setNumVehicule($data['numVehicule']);
        empty($data['teleLivreur']) ? true : $livreurs->setTeleLivreur($data['teleLivreur']);

        $updated = $this->livreurRepository->update($livreurs);

        return new JsonResponse($updated->toArray(), Response::HTTP_OK);
    }

}
