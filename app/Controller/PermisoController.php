<?php
/**
 * Created by PhpStorm.
 * User: Martin Fierro
 * Date: 10/11/2018
 * Time: 01:08 PM
 */

namespace App\Controller;


use App\Helpers\UrlHelper;
use App\Models\Permiso;
use App\Repositories\PermisosRepository;
use App\Validations\PermisosValidation;
use Core\Controller;
use Core\ServicesContainer;

class PermisoController extends Controller
{
    private $config;
    public function __construct()
    {
        parent::__construct();
        $this->config = ServicesContainer::getConfig();
    }

    /***
    AUTOR:  Martin Fierro Robles 10/10/2018
    Descripcion: Vista Principal del permisos
     ***/
    public function getindex() {

        return $this->render('mantenimiento/permisos/index.twig',[
            'company_name' => $this->config['company_name'],
            'company_name_min' => $this->config['company_name_min'],
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
    public function getactualizarp(int $id) {
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
    public function geteliminarp(int $id) {
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
}