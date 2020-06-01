<?php

namespace App\Controller;

use App\Entity\Produits;
use App\Repository\CommandesLaboRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use Symfony\Component\Routing\Annotation\Route;

class CommandesLaboController
{

    private $commandesLaboRepository;
    private $em;

    public function __construct(CommandesLaboRepository $commandesLaboRepository,EntityManagerInterface $entityManager)
    {
        $this->commandesLaboRepository = $commandesLaboRepository;
        $this->em= $entityManager;
        $this->produitsRepository = $this->em->getRepository(Produits::class);
    }


    /**
     * @Route("/commandesLabo", name="addCmdLabo", methods={"POST"})
     */
    public function add(Request $request): JsonResponse
    {

        $data = json_decode($request->getContent(), true);

        //$idCommandeLabo = $data['idCommandeLabo'];
        $dueDate = $data['dueDate'];
        $libelle = $data['libelle'];
        $quantiteTotal = $data['quantiteTotal'];
        $codeProduit = $data['codeProduit'];

        if (empty($idCommandeLabo) || empty($dueDate) || empty($libelle) || empty($codeProduit))
        {
            throw new NotFoundHttpException('Expecting mandatory parameters!');
        }

        $dueDate2 = \DateTime::createFromFormat('d-m-Y', $dueDate);

        $codeProduit2 = $this->produitsRepository->findOneBy(['codeProduit'=>$codeProduit]);

        $this->commandesLaboRepository-> save( $dueDate2, $libelle, $quantiteTotal, $codeProduit2);

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
                'dueDate' => $commandesLabo->getDueDate()->format('d-m-Y'),
                'codeProduit' => $commandesLabo->getCodeProduit(),
                'quantiteTotal' => $commandesLabo->getQuantiteTotal(),
            ];
        }

        return new JsonResponse($data, Response::HTTP_OK);
    }



}
