<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;

class StaticPageController extends AbstractController
{
    #[Route('/', name: 'app_index')]
    public function index(): Response
    {
        return $this->render('static_page/index.html.twig', [
            'controller_name' => 'StaticPageController',
        ]);
    }

    #[Route('/descarrega', name: 'app_descarrega')]
    public function descarrega(): Response
    {
        return $this->render('static_page/descarrega.html.twig', [
            
        ]);
    }


    #[Route('/plans-i-preus', name: 'app_plans_preus')]
    public function plans(): Response
    {
        return $this->render('static_page/plans-preus.html.twig', [
            'controller_name' => 'StaticPageController',
        ]);
    }


    #[Route('/casos-exit', name: 'app_casos_exit')]
    public function casosExit(): Response
    {
        return $this->render('static_page/casos-exit.html.twig', [
            'controller_name' => 'StaticPageController',
        ]);
    }


    #[Route('/resenyes', name: 'app_resenyes')]
    public function resenyes(): Response
    {
        return $this->render('static_page/resenyes.html.twig', [
            'controller_name' => 'StaticPageController',
        ]);
    }


    #[Route('/qui-som', name: 'app_qui_som')]
    public function quiSom(): Response
    {
        return $this->render('static_page/qui-som.html.twig', [
            'controller_name' => 'StaticPageController',
        ]);
    }


    #[Route('/contacte', name: 'app_contacte')]
    public function contacte(): Response
    {
        return $this->render('static_page/contacte.html.twig', [
            'controller_name' => 'StaticPageController',
        ]);
    }


    #[Route('/descripcio-producte', name: 'app_descripcio_producte')]
    public function descripcioProducte(): Response
    {
        return $this->render('static_page/descripcio-producte.html.twig', [
            'controller_name' => 'StaticPageController',
        ]);
    }

    #[Route('/termes-condicions', name: 'app_termes_condicions')]
    public function termesCondicions(): Response
    {
        return $this->render('static_page/terminos-condiciones.html.twig');
    }


    #[Route('/blog2', name: 'app_blog')]
    public function blog(): Response
    {
        return $this->render('static_page/blog.html.twig', [
            
        ]);
    }

    #[Route('/info_post', name: 'app_info_post')]
    public function info_post(): Response
    {
        return $this->render('static_page/info_post.html.twig', [
            
        ]);
    }


    #[Route('/cookies', name: 'app_cookies')]
    public function cookies(): Response
    {
        return $this->render('static_page/cookies.html.twig', [
            'controller_name' => 'StaticPageController',
        ]);
    }

    #[Route('/politica', name: 'app_politica')]
    public function politica(): Response
    {
        return $this->render('static_page/politica.html.twig', [
            'controller_name' => 'StaticPageController',
        ]);
    }

    #[Route('/faqs', name: 'app_faqs')]
    public function faqs(): Response
    {
        return $this->render('static_page/faqs.html.twig');
    }

    #[Route('/avis-legal', name: 'app_avis_legal')]
    public function avislegal(): Response
    {
        return $this->render('static_page/avis-legal.html.twig');
    }

}
