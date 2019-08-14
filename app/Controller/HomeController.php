<?php
/**
 * Created by PhpStorm.
 * User: Martin Fierro
 * Date: 21/09/2018
 * Time: 09:31 AM
 */

namespace App\Controller;


use App\Repositories\ProductoRepository;
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
            'company_name' => $this->config['company_name'],
            'title' => 'Inicio',
            '' => (new ProductoRepository())->Listar()
        ]);
    }

    public function getempresa()
    {
        return $this->render('home/empresa.twig', [
            'company_name' => $this->config['company_name'],
            'title' => 'Empresa'
        ]);
    }

    public function getcontacto()
    {
        return $this->render('home/contacto.twig', [
            'company_name' => $this->config['company_name'],
            'title' => 'Contacto'
        ]);
    }

    public function getproductos()
    {
        return $this->render('home/productos.twig', [
            'company_name' => $this->config['company_name'],
            'company_name_min' => $this->config['company_name_min'],
            'title' => 'Productos',
            'productos' => (new ProductoRepository())->Listar()
        ]);
    }

    public function getver(){
        return $this->render('home/ver.twig',[]);
    }


}