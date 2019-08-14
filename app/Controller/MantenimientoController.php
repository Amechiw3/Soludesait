<?php
/**
 * Created by PhpStorm.
 * User: Martin Fierro
 * Date: 25/09/2018
 * Time: 07:23 AM
 */
/***
    Alumno:     Martin Fierro Robles
    Fecha:      25/09/2018 07:24 AM
    Maestro:    Desarrollo de Aplicaciones WEB
    Materia:    Noe Cazarez
    Descripcion:
    Modulo de mantenimiento, Alta de usuarios, Catalogos, etc...
***/
namespace App\Controller;

use Core\Controller;
use Core\ServicesContainer;

class MantenimientoController extends Controller
{
    private $config;
    public function __construct()
    {
        parent::__construct();
        $this->config = ServicesContainer::getConfig();
    }

    /***
        AUTOR:  Martin Fierro Robles 06/11/2018
        Descripcion:
    ***/
    public function getindex() {
        return $this->render('mantenimiento/index.twig', [
            'company_name' => $this->config['company_name'],
            'company_name_min' => $this->config['company_name_min'],
            'title' => 'Inicio'
        ]);
    }
}