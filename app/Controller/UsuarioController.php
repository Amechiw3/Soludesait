<?php
/**
 * Created by PhpStorm.
 * User: Martin Fierro
 * Date: 10/11/2018
 * Time: 01:05 PM
 */

namespace App\Controller;


use App\Helpers\UrlHelper;
use App\Models\Usuario;
use App\Repositories\RolRepository;
use App\Repositories\UsuarioRepository;
use App\Validations\UsuarioValidation;
use Core\Controller;
use Core\ServicesContainer;

class UsuarioController extends Controller
{
    private $config;
    public function __construct()
    {
        parent::__construct();
        $this->config = ServicesContainer::getConfig();
    }

    /***
    AUTOR:  Martin Fierro Robles 25/09/2018
    Descripcion: Vista Principal del Modulo
     **/
    public function getindex() {
        $obj = new UsuarioRepository();
        return $this->render('mantenimiento/usuarios/index.twig',[
            'company_name' => $this->config['company_name'],
            'company_name_min' => $this->config['company_name_min'],
            'title' => 'Listado de Usuarios',
            'usuarios' => $obj->listar(),
            'roles' => (new RolRepository())->Listar()
        ]);
    }

    //region FUNCIONES PARA EL REGISTRO DE USUARIOS
    /***
    AUTOR:  Martin Fierro Robles 25/09/2018
    Descripcion: Formulario Para el Registro de Nuevos usuarios
     ***/
    public function getnusuario() {
        $obj = new RolRepository();

        return $this->render('mantenimiento/usuarios/nusuario.twig', [
            'company_name' => $this->config['company_name'],
            'roles' => $obj->listar()
        ]);
    }

    /***
    AUTOR:  Martin Fierro Robles 26/09/2018
    Descripcion: Funcion para el Registro de usuarios al sistema
     ***/
    public function postguardarusuario() {
        UsuarioValidation::validate($_POST);

        $model = new Usuario();
        $model->nombre  = $_POST['nombre'];
        $model->apaterno= $_POST['apaterno'];
        $model->amaterno= $_POST['amaterno'];
        $model->rol_id  = $_POST['rol_id'];
        $model->correo  = $_POST['correo'];
        $model->password= $_POST['password'];

        $usuarioRepo = new UsuarioRepository();
        $rh = $usuarioRepo->guardar($model);
        if ($rh->response) {
            $rh->href = 'mantenimiento/usuarios';
        }
        print_r(json_encode($rh));
    }
    //endregion

    //region FUNCIONES PARA ACTUALIZAR USUARIOS
    /***
    AUTOR:  Martin Fierro Robles 02/10/2018
    Descripcion: VISTA PARA ACTUALIZAR
     ***/
    public function getactualizaru($id = 0) {
        if ($id == 0) {
            UrlHelper::redirect('mantenimiento');
        } else {
            $usuario = new UsuarioRepository();
            $model = $usuario->obtener($id);

            return $this->render('mantenimiento/usuarios/actualizar_u.twig', [
                'company_name' => $this->config['company_name'],
                'title' => 'Actualizando...',
                'model' => (new UsuarioRepository())->obtener($id),
                'roles' => (new RolRepository())->listar()
            ]);
        }
    }

    /***
    AUTOR:  Martin Fierro Robles 26/09/2018
    Descripcion: Funcion para actualizar el usuarios del sistema
     ***/
    public function postactualizaru() {
        UsuarioValidation::validate($_POST);

        $objRepo = new UsuarioRepository();
        $model = $objRepo->obtener($_POST['id']);

        if (isset($_POST['nombre']))    $model->nombre      = $_POST['nombre'];
        if (isset($_POST['apaterno']))  $model->apaterno    = $_POST['apaterno'];
        if (isset($_POST['amaterno']))  $model->amaterno    = $_POST['amaterno'];
        if (isset($_POST['rol_id']))    $model->rol_id      = $_POST['rol_id'];
        if (isset($_POST['password']))  $model->password    = $_POST['password'];
        //$model->password = null;

        $rh = $objRepo->guardar($model);
        if ($rh->response) {
            $rh->href = 'mantenimiento/usuarios';
        }
        print_r(json_encode($rh));
    }
    //endregion

    //region ELIMINAR USUARIOS
    /***
    AUTOR:  Martin Fierro Robles 03/10/2018
    Descripcion:
     ***/
    public function geteliminaru($id) {
        if ($id <= 0) {
            UrlHelper::redirect('mantenimiento');
        }

        return $this->render('mantenimiento/usuarios/eliminaru.twig',
            [
                'title' => 'Borrando Usuarios...',
                'model' => (new UsuarioRepository())->obtener($id)
            ]
        );
    }

    /***
    AUTOR:  Martin Fierro Robles 02/10/2018
    Descripcion: Funcion para elimnar un usuario
     ***/
    public function posteliminaru() {
        //TODO: Validar los campos obligatorios...
        $objRepo = new UsuarioRepository();
        $model = $objRepo->obtener($_POST['id']);

        $rh = $objRepo->eliminar($model);
        if ($rh->response) {
            $rh->href = 'mantenimiento/';
        }
        print_r(json_encode($rh));
    }
    //endregion

}