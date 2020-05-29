<?php

namespace App\Controller;

use App\Repository\AdministrateursRepository;
use Doctrine\ORM\Query\AST\Join;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;

use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use Symfony\Component\Routing\Annotation\Route;

class AdministrateursController
{

    private $administrateursRepository;

    public function __construct(AdministrateursRepository $administrateursRepository)
    {
        $this->administrateursRepository = $administrateursRepository;
    }

    /**
     * @Route("/administrateurs", name="add_admin", methods={"POST"})
     */
    public function add(Request $request): JsonResponse
    {

        $data = json_decode($request->getContent(), true);

        $loginAdmin = $data['loginAdmin'];
        $passwordAdmin = $data['passwordAdmin'];
        $nomAdmin = $data['nomAdmin'];
        $teleAdmin = $data['teleAdmin'];


        //return new JsonResponse($loginAdmin);
        //return new JsonResponse($request);
      //  return new JsonResponse($data);

        if (empty($loginAdmin) || empty($passwordAdmin) || empty($nomAdmin) || empty($teleAdmin))
        {
            throw new NotFoundHttpException('Expecting mandatory parameters!');
        }

        $this->administrateursRepository->save($loginAdmin, $passwordAdmin, $nomAdmin, $teleAdmin);

        return new JsonResponse(['status' => 'Customer created!'], Response::HTTP_CREATED);
    }

    /**
     * @Route("/administrateurs/{loginAdmin}", name="get_one_admin", methods={"GET"})
     */
    public function get($loginAdmin): JsonResponse
    {
        $administrateur = $this->administrateursRepository->findOneBy(['loginAdmin' => $loginAdmin]);

        $data[] = [
            //'id' => $administrateur->getId(),
            'loginAdmin' => $administrateur->getLoginAdmin(),
            'passwordAdmin' => $administrateur->getPasswordAdmin(),
            'nomAdmin' => $administrateur->getNomAdmin(),
            'teleAdmin' => $administrateur->getTeleAdmin(),
        ];

 $jsonResp = json_encode($data[0],JSON_FORCE_OBJECT);
        $jsonDec = json_decode($jsonResp);
        return new JsonResponse($jsonDec, Response::HTTP_OK);
    }

    /**
     * @Route("/administrateurs", name="get_all_admins", methods={"GET"})
     */
    public function getAll(): JsonResponse
    {
        $administrateurs = $this->administrateursRepository->findAll();
        $data = [];

        foreach ($administrateurs as $administrateur) {
            $data[] = [
                //'id' => $administrateur->getId(),
                'loginAdmin' => $administrateur->getLoginAdmin(),
                'passwordAdmin' => $administrateur->getPasswordAdmin(),
                'nomAdmin' => $administrateur->getNomAdmin(),
                'teleAdmin' => $administrateur->getTeleAdmin(),
            ];
        }

        return new JsonResponse($data, Response::HTTP_OK);
    }

    /**
     * @Route("/administrateurs/{loginAdmin}", name="update_admin", methods={"PATCH"})
     */
    public function update($loginAdmin, Request $request): JsonResponse
    {
        $administrateur = $this->administrateursRepository->findOneBy(['loginAdmin' => $loginAdmin]);
        $data = json_decode($request->getContent(), true);

        //empty($data['loginAdmin']) ? true : $administrateur->setLoginAdmin($data['loginAdmin']);
        empty($data['passwordAdmin']) ? true : $administrateur->setPasswordAdmin($data['passwordAdmin']);
       // empty($data['nomAdmin']) ? true : $administrateur->setNomAdmin($data['nomAdmin']);
        //empty($data['teleAdmin']) ? true : $administrateur->setTeleAdmin($data['teleAdmin']);

        $updated = $this->administrateursRepository->update($administrateur);

        return new JsonResponse($updated->toArray(), Response::HTTP_OK);
    }


    /**
     * @Route("/administrateurs/{loginAdmin}", name="delete_admin", methods={"DELETE"})
     */
    public function delete($loginAdmin): JsonResponse
    {
        $administrateur = $this->administrateursRepository->findOneBy(['loginAdmin' => $loginAdmin]);

        $this->administrateursRepository->remove($administrateur);

        return new JsonResponse(['status' => 'Customer deleted'], Response::HTTP_NO_CONTENT);
    }


}
