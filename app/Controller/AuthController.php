<?php
/**
 * Created by PhpStorm.
 * User: Martin Fierro
 * Date: 16/10/2018
 * Time: 07:51 AM
 */
/***
    Alumno:     Martin Fierro Robles
    Fecha:      16/10/2018 07:51 AM
    Maestro:    Noe Cazarez
    Materia:    Desarrollo de aplicaciones WEB
    Descripcion:
    Clase para las funciones la autentificacion de usuarios
***/
namespace App\Controller;


use App\Helpers\UrlHelper;
use App\Repositories\UsuarioRepository;
use Core\Auth;
use Core\Controller;
use Core\ServicesContainer;

class AuthController extends Controller
{
    private $config;
    private $userRep;
    public function  __construct()
    {
        if (Auth::isLoggedIn()) {
            UrlHelper::redirect();
        }

        parent::__construct();
        $this->config = ServicesContainer::getConfig();
        $this->userRep = new UsuarioRepository();
    }

    /***
        AUTOR:  Martin Fierro Robles 16/10/2018
        Descripcion:
    ***/
    public function getindex() {
        return $this->render(
            'auth/index.twig', [
                'title' => 'Autentificacion',
                'company_name' => $this->config['company_name'],
                'fondo' => rand(1, 6)
        ]);
    }

    /***
        AUTOR:  Martin Fierro Robles 17/10/2018
        Descripcion: Funcion encargada de AUTENTIFICAR al usuario
        Verifica los datos ingresados por el usuario
    ***/
    public function postsignin() {
        $rh = $this->userRep->autentificacion($_POST['correo'], $_POST['password']);
        if ($rh->response) {
            $rh->href = 'home';
        }
        print_r(json_encode($rh));
    }

    /***
        AUTOR:  Martin Fierro Robles 17/10/2018
        Descripcion: Funcion encargada de DESTRUIR la session
    ***/
    public function getsignout() {
        Auth::destroy();
        UrlHelper::redirect('');
    }
}