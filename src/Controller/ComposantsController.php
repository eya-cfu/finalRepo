<?php

namespace App\Controller;

use App\Repository\ComposantsRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use Symfony\Component\Routing\Annotation\Route;

class ComposantsController
{
    private $composantsRepository;

    public function __construct(ComposantsRepository $composantsRepository)
    {
        $this->composantsRepository = $composantsRepository;
    }


    /**
     * @Route("/composants", name="addComposants", methods={"POST"})
     */
    public function add(Request $request): JsonResponse
    {

        $data = json_decode($request->getContent(), true);

        $idCommposant = $data['idComposant'];
        $unite = $data['unite'];
        $nomComp = $data['nomComp'];


        if (empty($idCommposant) || empty($unite) || empty($nomComp) )
        {
            throw new NotFoundHttpException('Expecting mandatory parameters!');
        }

        $this->composantsRepository-> save($idCommposant, $unite, $nomComp);

        return new JsonResponse(['status' => 'created!'], Response::HTTP_CREATED);
    }

    /**
     * @Route("/composants", name="getComposants", methods={"GET"})
     */
    public function getAll(): JsonResponse
    {
        $composants = $this->composantsRepository->findAll();
        $data = [];

        foreach ($composants as $composant) {
            $data[] = [
                //'id' => $composants->getId(),
                'idComposant' => $composant->getIdComposant(),
                'nomComp' => $composant->getNomComp(),
                'unite' => $composant->getUnite(),
            ];
        }

        return new JsonResponse($data, Response::HTTP_OK);
    }


    /**
     * @Route("/composants/{idComposant}", name="deleteComposant", methods={"DELETE"})

    public function delete($idComposant): JsonResponse
    {
        $composants = $this->composantsRepository->findOneBy(['idComposant' => $idComposant]);

        $this->composantsRepository->remove($composants);

        return new JsonResponse(['status' => 'Customer deleted'], Response::HTTP_NO_CONTENT);
    }
*/


    /**
     * @Route("/composants/{idComposant}", name="getComposantById", methods={"GET"})
     */
    public function get($idComposant): JsonResponse
    {
        $composants = $this->composantsRepository->findOneBy(['idComposant' => $idComposant]);

        $data[] = [
            //'id' => $composants->getId(),
            'nomComp' => $composants->getNomComp(),
            'idComposant' => $composants->getIdComposant(),
            'unite' => $composants->getUnite(),
        ];

        $jsonResp = json_encode($data[0],JSON_FORCE_OBJECT);
        $jsonDec = json_decode($jsonResp);
        return new JsonResponse($jsonDec, Response::HTTP_OK);
    }

}
