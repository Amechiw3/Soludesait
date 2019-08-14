<?php
/**
 * Created by PhpStorm.
 * User: Martin Fierro
 * Date: 03/11/2018
 * Time: 03:53 AM
 */

namespace App\Controller;


use App\Repositories\UsuarioRepository;
use Core\Auth;
use Core\Controller;
use Core\ServicesContainer;

class CheckoutController extends Controller
{

    private $config;

    public function __construct()
    {
        parent::__construct();
        $this->config = ServicesContainer::getConfig();
    }

    /***
    AUTOR:  Martin Fierro Robles 03/11/2018
    Descripcion:
     ***/
    public function getindex()
    {
        return $this->render('checkout/index.twig', [
            'title' => $this->config['company_name'],
            'datos' => (new UsuarioRepository())->obtener(Auth::getCurrentUser()->id)
        ]);
    }
}