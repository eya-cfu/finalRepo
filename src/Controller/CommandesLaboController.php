<?php

namespace App\Controller;

use App\Repository\CommandesLaboRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;

class CommandesLaboController
{

    private $commandesLaboRepository;

    public function __construct(CommandesLaboRepository $commandesLaboRepository)
    {
        $this->commandesLaboRepository = $commandesLaboRepository;
    }


    /**
     * @Route("/commandesLabo", name="addCmdLabo", methods={"POST"})
     */
    public function add(Request $request): JsonResponse
    {

        $data = json_decode($request->getContent(), true);

        $idCommandeLabo = $data['idCommandeLabo'];
        $dueDate = $data['dueDate'];
        $libelle = $data['libelle'];
        $quantiteTotal = $data['quantiteTotal'];
        $codeProduit = $data['codeProduit'];

        if (empty($idCommandeLabo) || empty($dueDate) || empty($libelle) || empty($codeProduit))
        {
            throw new NotFoundHttpException('Expecting mandatory parameters!');
        }

        $dueDate2 = \DateTime::createFromFormat('Y-m-d', $dueDate);

        $this->commandesLaboRepository-> save($idCommandeLabo, $dueDate2, $libelle, $quantiteTotal, $codeProduit);

        return new JsonResponse(['status' => 'created!'], Response::HTTP_CREATED);
    }

    /**
     * @Route("/commandesLabo", name="getCmdsLabo", methods={"GET"})
     */
    public function getAll(): JsonResponse
    {
        $commandesLabos = $this->commandesLaboRepository->findAll();
        $data = [];

        foreach ($commandesLabos as $commandesLabo) {
            $data[] = [
                //'id' => $commandesLabos->getId(),
                'idCommandeLabo' => $commandesLabo->getIdCommandeLabo(),
                'libelle' => $commandesLabo->getLibelle(),
                'dueDate' => $commandesLabo->getDueDate(),
                'codeProduit' => $commandesLabo->getCodeProduit(),
                'quantiteTotal' => $commandesLabo->getQuantiteTotal(),
            ];
        }

        return new JsonResponse($data, Response::HTTP_OK);
    }



}
