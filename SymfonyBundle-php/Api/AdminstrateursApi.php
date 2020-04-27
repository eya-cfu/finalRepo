<?php


namespace Swagger\Server\Api;


use App\Repository\AdministrateursRepository;
use Swagger\Server\Model\Administrateurs;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class AdminstrateursApi implements AdministrateursApiInterface
{
    /*/**
     * @Route("/displayAdministrateurs", name="displayAdministrateurs")

    public function display(AdministrateurRepository $administrateurRepository)
    {
        $administrateurs= $administrateurRepository->findAll();
        dump($administrateurs); // will dump with paths types etc
        return $this->render('administrateur/index.html.twig', [
            'administrateurs' => $administrateurs,
        ]);
    }

    /**
     * @Route("/createadministrateurwithForm", name="create_administrateurForm")

    public function createProductwithForm(Request $request): Response
    {
        // you can fetch the EntityManager via $this->getDoctrine()
        // or you can add an argument to the action: createProduct(EntityManagerInterface $entityManager)
        $entityManager = $this->getDoctrine()->getManager();

        $administrateur = new Administrateur();

        $form = $this ->createForm(AdminstrateurType::class,$administrateur);

        $form->handleRequest($request);

        if($form->isSubmitted())
        {
            // tell Doctrine you want to (eventually) save the Product
            $entityManager->persist($administrateur);

            // actually executes the queries (i.e. the INSERT query)
            $entityManager->flush();

            return $this-> redirect($this->generateUrl('displayAdministrateurs')); //redirect to index function

        }

        $this ->addFlash('success','Entry added');
        return $this->render('administrateur/create.html.twig',
            ['form'=> $form ->createView()]
        );
    }

    /**
     * @Route("/removeAdministrateur/{id}", name="removeAdministrateur")

    public function remove (Administrateur $administrateur)
    {

        $em = $this -> getDoctrine()->getManager();

        $em -> remove($administrateur);
        $em -> flush();

        $this ->addFlash('success','Entry removed');
        return $this-> redirect($this->generateUrl('displayAdministrateurs')); //redirect to index function
    }
    */

    /*
     * @Route ("/displayAdministrateurs", name="displayAdministrateurs")
    */
    public function display(AdministrateurRepository $administrateurRepository)
    {
        $administrateurs= $administrateurRepository->findAll();
        dump($administrateurs); // will dump with paths types etc
        return $this->render('administrateurs/index.html.twig', [
            'administrateurs' => $administrateurs,
        ]);
    }


    /**
    * @Route("/customers", name="add_customer", methods={"GET"})
     */
    public function addAdmin(Administrateurs $body, &$responseCode, array &$responseHeaders)
    {
        // TODO: Implement addAdmin() method.

        $entityManager = $this->getDoctrine()->getManager();

        $administrateur = new \App\Entity\Administrateurs();

       $administrateur->setLoginAdmin($body->getLoginAdmin());
       $administrateur->setNomAdmin($body->getNomAdmin());
       $administrateur->setPasswordAdmin($body->getPasswordAdmin());
       $administrateur->setTeleAdmin($body->getTeleAdmin());

       $entityManager->persist($administrateur);
       $entityManager->flush();

       return new Response("fuck");

    }

    /**
     * @inheritDoc
     */
    public function changeAdminPw($loginAdmin, $passwordAdmin, &$responseCode, array &$responseHeaders)
    {
        // TODO: Implement changeAdminPw() method.
        $entityManager = $this->getDoctrine()->getManager();
        $administrateurRepository = $this->getDoctrine()->getRepository(Administrateurs::class);

        $administrateurs = $administrateurRepository->findOneBy(array('loginAdmin'=>$loginAdmin));
        $entityManager -> persist($administrateurs);
        $entityManager-> flush();

    }

    /**
     * @inheritDoc
     */
    public function deleteAdminbyLogin($loginAdmin, &$responseCode, array &$responseHeaders)
    {
        // TODO: Implement deleteAdminbyLogin() method.

        $em = $this -> getDoctrine()->getManager();

            //$repository = $this->getDoctrine()->getRepository(Product::class);
        $administrateurRepository = $this->getDoctrine()->getRepository(Administrateurs::class);
        $administrateurs = $administrateurRepository->findOneBy(array('loginAdmin'=>$loginAdmin));

        $em -> remove($administrateurs);
        $em -> flush();
    }

    /**
     * @inheritDoc
     */
    public function getAdminById($loginAdmin, &$responseCode, array &$responseHeaders)
    {
        // TODO: Implement getAdminById() method.
        $entityManager = $this->getDoctrine()->getManager();
        $administrateurRepository = $this->getDoctrine()->getRepository(Administrateurs::class);

        $administrateurs = $administrateurRepository->findOneBy(array('loginAdmin'=>$loginAdmin));

        return $administrateurs;

    }

    /**
     * @inheritDoc
     */
    public function getAdministrateurs(&$responseCode, array &$responseHeaders)
    {
        // TODO: Implement getAdministrateurs() method.
        $entityManager = $this->getDoctrine()->getManager();
        $administrateurRepository = $this->getDoctrine()->getRepository(Administrateurs::class);

        $administrateurs = $administrateurRepository->findAll();

        return $administrateurs;
    }
}