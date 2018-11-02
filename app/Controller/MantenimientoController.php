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

use App\Helpers\ResponseHelper;
use App\Helpers\UrlHelper;
use App\Models\Permiso;
use App\Models\Rol;
use App\Models\Usuario;
use App\Repositories\PermisosRepository;
use App\Repositories\RolRepository;
use App\Repositories\UsuarioRepository;
use App\Validations\PermisosValidation;
use App\Validations\RolesValidation;
use App\Validations\UsuarioValidation;
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
        AUTOR:  Martin Fierro Robles 25/09/2018
        Descripcion: Vista Principal del Modulo
    **/
    public function getusuarios() {
        $obj = new UsuarioRepository();
        return $this->render('mantenimiento/usuarios/index.twig',[
            'company_name' => $this->config['company_name'],
            'title' => 'Listado de Usuarios',
            'usuarios' => $obj->listar()
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

        $objRep = new UsuarioRepository();
        return $this->render('mantenimiento/usuarios/eliminaru.twig',
            [
               'title' => 'Borrando Usuarios...',
               'model' => $objRep->obtener($id)
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

    public function gettest() {
        return $this->render(
            'mantenimiento/test.twig', [
                'company_name' => $this->config['company_name'],
                'title' => 'Pruebas'
            ]
        );
    }

    public function postgrid() {
        print_r((new UsuarioRepository())->listargrid());
    }

    public function posttest2() {

        UsuarioValidation::validate($_POST);

        $rh = new ResponseHelper();
        $rh->setResponse(true, $_POST);
        $rh->href = "mantenimiento/";

        print_r(json_encode($rh));
    }

    /***
        AUTOR:  Martin Fierro Robles 10/10/2018
        Descripcion: Vista Principal del permisos
    ***/
    public function getpermisos() {

        return $this->render('mantenimiento/permisos/index.twig',[
            'company_name' => $this->config['company_name'],
            'title' => 'Listado de Permisos',
            'datos' => (new PermisosRepository())->Listar()
        ]);
    }

    //region Funciones Registro de permisos
    /***
        AUTOR:  Martin Fierro Robles 10/10/2018
        Descripcion: Funcion para visualizar la vista de registro de permisos
    ***/
    public function getnpermiso() {
        return $this->render('mantenimiento/permisos/npermiso.twig',[
            'company_name' => $this->config['company_name'],
            'title' => 'Registro de Permisos'
        ]);
    }
    
    /***
        AUTOR:  Martin Fierro Robles 10/10/2018
        Descripcion: Funcion para registrar un nuevo permiso
    ***/
    public function postgpermiso() {
        PermisosValidation::validate($_POST);

        $model = new Permiso();
        $model->nombre  = $_POST['nombre'];

        $rh = (new PermisosRepository())->Guardar($model);
        if ($rh->response) {
            $rh->href = 'mantenimiento/permisos';
        }
        print_r(json_encode($rh));
    }
    //endregion

    //region Funciones para Actualizar permisos
    /***
        AUTOR:  Martin Fierro Robles 10/10/2018
        Descripcion: Funcion para visualizar la vista de actualizar los Permisos
    ***/
    public function getactualizarp(int $id = 0) {
        if ($id == 0) {
            UrlHelper::redirect('mantenimiento/permisos');
        } else {
            return $this->render('mantenimiento/permisos/actualizarr.twig', [
                'company_name' => $this->config['company_name'],
                'title' => 'Actualizando...',
                'datos' => (new PermisosRepository())->Obtener($id)
            ]);
        }
    }

    /***
        AUTOR:  Martin Fierro Robles 10/10/2018
        Descripcion: Funcion para Actualizar el registro de permiso
    ***/
    public function postactualizarp() {
        PermisosValidation::validate($_POST);
        $model = (new PermisosRepository())->Obtener($_POST['id']);

        if (isset($_POST['nombre']))    $model->nombre      = $_POST['nombre'];

        $rh = (new PermisosRepository())->Guardar($model);
        if ($rh->response) {
            $rh->href = 'mantenimiento/permisos';
        }
        print_r(json_encode($rh));

    }
    //endregion

    //region Funciones para Eliminar permisos
    /***
    AUTOR:  Martin Fierro Robles 10/10/2018
    Descripcion: Funcion para visualizar la vista de Eliminar un Permiso
     ***/
    public function geteliminarp(int $id = 0) {
        if ($id <= 0) {
            UrlHelper::redirect('mantenimiento');
        } else {
            return $this->render('mantenimiento/permisos/eliminarp.twig', [
                'company_name' => $this->config['company_name'],
                'title' => 'Eliminando Permiso...',
                'datos' => (new PermisosRepository())->Obtener($id)
            ]);
        }
    }

    /***
    AUTOR:  Martin Fierro Robles 10/10/2018
    Descripcion: Funcion para Eliminar un registro de permiso
     ***/
    public function posteliminarp() {
        $rh = (new PermisosRepository())->Eliminar((new PermisosRepository())->Obtener($_POST['id']));
        if ($rh->response) {
            $rh->href = 'mantenimiento/permisos';
        }
        print_r(json_encode($rh));
    }
    //endregion

    public function getroles() {

        return $this->render('mantenimiento/roles/index.twig',[
            'company_name' => $this->config['company_name'],
            'title' => 'Listado de Permisos',
            'datos' => (new RolRepository())->Listar()
        ]);
    }

    //region Funciones Registro de permisos
    /***
    AUTOR:  Martin Fierro Robles 10/10/2018
    Descripcion: Funcion para visualizar la vista de registro de permisos
     ***/
    public function getnrol() {
        return $this->render('mantenimiento/roles/nrol.twig',[
            'company_name' => $this->config['company_name'],
            'title' => 'Registro de Roles'
        ]);
    }

    /***
    AUTOR:  Martin Fierro Robles 10/10/2018
    Descripcion: Funcion para registrar un nuevo permiso
     ***/
    public function postgrol() {
        RolesValidation::validate($_POST);

        $model = new Rol();
        $model->nombre  = $_POST['nombre'];

        $rh = (new RolRepository())->Guardar($model);
        if ($rh->response) {
            $rh->href = 'mantenimiento/roles';
        }
        print_r(json_encode($rh));
    }
    //endregion

    //region Funciones para Actualizar permisos
    /***
    AUTOR:  Martin Fierro Robles 10/10/2018
    Descripcion: Funcion para visualizar la vista de actualizar los Permisos
     ***/
    public function getactualizarr(int $id = 0) {
        if ($id == 0) {
            UrlHelper::redirect('mantenimiento/permisos');
        } else {
            return $this->render('mantenimiento/roles/actualizarr.twig', [
                'company_name' => $this->config['company_name'],
                'title' => 'Actualizando...',
                'datos' => (new RolRepository())->Obtener($id)
            ]);
        }
    }

    /***
    AUTOR:  Martin Fierro Robles 10/10/2018
    Descripcion: Funcion para Actualizar el registro de permiso
     ***/
    public function postactualizarr() {
        RolesValidation::validate($_POST);
        $model = (new RolRepository())->Obtener($_POST['id']);

        if (isset($_POST['nombre']))    $model->nombre  = $_POST['nombre'];

        $rh = (new RolRepository())->Guardar($model);
        if ($rh->response) {
            $rh->href = 'mantenimiento/roles';
        }
        print_r(json_encode($rh));

    }
    //endregion

    //region Funciones para Eliminar permisos
    /***
    AUTOR:  Martin Fierro Robles 10/10/2018
    Descripcion: Funcion para visualizar la vista de Eliminar un Permiso
     ***/
    public function geteliminarr(int $id = 0) {
        if ($id <= 0) {
            UrlHelper::redirect('mantenimiento');
        } else {
            return $this->render('mantenimiento/roles/eliminarr.twig', [
                'company_name' => $this->config['company_name'],
                'title' => 'Eliminando Permiso...',
                'datos' => (new RolRepository())->Obtener($id)
            ]);
        }
    }

    /***
    AUTOR:  Martin Fierro Robles 10/10/2018
    Descripcion: Funcion para Eliminar un registro de permiso
     ***/
    public function posteliminarr() {
        $rh = (new RolRepository())->Eliminar((new RolRepository())->Obtener($_POST['id']));
        if ($rh->response) {
            $rh->href = 'mantenimiento/roles';
        }
        print_r(json_encode($rh));
    }
    //endregion
}