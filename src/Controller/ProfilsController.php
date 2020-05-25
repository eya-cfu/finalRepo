<?php

namespace App\Controller;

use App\Repository\ProfilsRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use Symfony\Component\Routing\Annotation\Route;

class ProfilsController
{

    private $profilsRepository;

    public function __construct(ProfilsRepository $profilsRepository)
    {
        $this->profilsRepository = $profilsRepository;
    }


    /**
     * @Route("/profils", name="add_profils", methods={"POST"})
     */
    public function add(Request $request): JsonResponse
    {

        $data = json_decode($request->getContent(), true);

        $matricule = $data['matricule'];
        $login = $data['login'];
        $password = $data['password'];
        $nom = $data['nom'];
        $affectation = $data['affectation'];

        if (empty($matricule) || empty($login) || empty($password) || empty($affectation))
        {
            throw new NotFoundHttpException('Expecting mandatory parameters!');
        }

        $this->profilsRepository-> save($matricule, $login, $password, $nom, $affectation);

        return new JsonResponse(['status' => 'created!'], Response::HTTP_CREATED);
    }

    /**
     * @Route("/profils", name="get_all_profils", methods={"GET"})
     */
    public function getAll(): JsonResponse
    {
        $profils = $this->profilsRepository->findBy(['deleted'=> false]);
        $data = [];

        foreach ($profils as $profil) {
            $data[] = [
                //'id' => $profils->getId(),
                'matricule' => $profil->getMatricule(),
                'nom' => $profil->getNom(),
                'affectation' => $profil->getAffectation(),
                'login' => $profil->getLogin(),
                'password' => $profil->getPassword(),
            ];
        }

        return new JsonResponse($data, Response::HTTP_OK);
    }


    /**
     * @Route("/profils/{matricule}", name="delete_Profil", methods={"DELETE"})
     */
    public function delete($matricule): JsonResponse
    {
        $profils = $this->profilsRepository->findOneBy(['matricule' => $matricule]);

        $this->profilsRepository->remove($profils);

        return new JsonResponse(['status' => 'Customer deleted'], Response::HTTP_NO_CONTENT);
    }

    /**
     * @Route("/profils/{matricule}", name="getProfilBymatricule", methods={"GET"})
     */
    public function get($matricule): JsonResponse
    {
        $profils = $this->profilsRepository->findOneBy(['matricule' => $matricule]);

        $data[] = [
            //'id' => $profils->getId(),
            'matricule' => $profils->getMatricule(),
            'login' => $profils->getLogin(),
            'password' => $profils->getPassword(),
            'nom' => $profils->getNom(),
            'affectation' =>  $profils->getAffectation(),
        ];

        $jsonResp = json_encode($data[0],JSON_FORCE_OBJECT);
        $jsonDec = json_decode($jsonResp);
        return new JsonResponse($jsonDec, Response::HTTP_OK);
    }

    /**
     * @Route("/profils/Login/{login}", name="getProfilByLogin", methods={"GET"})
     */
    public function getByLogin($login): JsonResponse
    {
        $profils = $this->profilsRepository->findOneBy(['login' => $login]);

        $data[] = [
            //'id' => $profils->getId(),
            'matricule' => $profils->getMatricule(),
            'login' => $profils->getLogin(),
            'password' => $profils->getPassword(),
            'nom' => $profils->getNom(),
            'affectation' =>  $profils->getAffectation(),
        ];

        $jsonResp = json_encode($data[0],JSON_FORCE_OBJECT);
        $jsonDec = json_decode($jsonResp);
        return new JsonResponse($jsonDec, Response::HTTP_OK);
    }

}
