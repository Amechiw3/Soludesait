<?php
/**
 * Created by PhpStorm.
 * User: Martin Fierro
 * Date: 10/11/2018
 * Time: 01:10 PM
 */

namespace App\Controller;


use App\Helpers\UrlHelper;
use App\Models\Rol;
use App\Repositories\RolRepository;
use App\Validations\RolesValidation;
use Core\Controller;
use Core\ServicesContainer;

class RolController extends Controller
{
    private $config;
    public function __construct()
    {
        parent::__construct();
        $this->config = ServicesContainer::getConfig();
    }

    public function getindex() {

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

    //region Funciones para Actualizar rol
    /***
    AUTOR:  Martin Fierro Robles 10/10/2018
    Descripcion: Funcion para visualizar la vista de actualizar los Permisos
     ***/
    public function getactualizarr(int $id) {
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