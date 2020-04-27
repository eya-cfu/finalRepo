<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

//defines route that displays the whole api documentation
class ApiHomeController extends AbstractController
{
    /**
     * @Route("/", name="api_home")
     */
    public function index()
    {
        return $this->render('api_home/index.html.twig');
    }
}
