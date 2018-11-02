<?php
/**
 * Created by PhpStorm.
 * User: Martin Fierro
 * Date: 21/09/2018
 * Time: 09:31 AM
 */

namespace App\Controller;


use Core\Auth;
use Core\Controller;
use Core\ServicesContainer;

class HomeController extends Controller
{
    private $config;

    public function __construct()
    {
        parent::__construct();
        $this->config = ServicesContainer::getConfig();
    }

    public function getindex()
    {
        return $this->render('home/index.twig', [
            'title' => $this->config['company_name']
        ]);
    }

    public function getempresa()
    {
        return $this->render('home/empresa.twig', [
            'title' => $this->config['company_name']
        ]);
    }

    public function getcontacto()
    {
        return $this->render('home/contacto.twig', [
            'title' => $this->config['company_name']
        ]);
    }

    public function getproductos()
    {
        return $this->render('home/productos.twig', [
            'title' => $this->config['company_name']
        ]);
    }

    public function getUser() {
        var_dump(Auth::getCurrentUser());
    }

    public function getver(){
        return $this->render('home/ver.twig',[]);
    }
}