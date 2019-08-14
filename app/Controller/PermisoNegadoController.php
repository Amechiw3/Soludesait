<?php
/**
 * Created by PhpStorm.
 * User: Martin Fierro
 * Date: 10/11/2018
 * Time: 01:21 PM
 */

namespace App\Controller;


use App\Models\PermisoNegado;
use App\Repositories\PermisoNegadoRepository;
use App\Repositories\PermisosRepository;
use App\Repositories\RolRepository;
use Core\Controller;
use Core\ServicesContainer;

class PermisoNegadoController extends Controller
{
    private $config;
    public function __construct()
    {
        parent::__construct();
        $this->config = ServicesContainer::getConfig();
    }

    /***
    AUTOR:  Martin Fierro Robles 04/11/2018
    Descripcion: Vista Principal de Permisos Negados
     ***/
    public function getindex() {
        return $this->render('mantenimiento/permisos_negados/index.twig',[
            'company_name' => $this->config['company_name'],
            'company_name_min' => $this->config['company_name_min'],
            'title' => 'Listado de Permisos Negados',
            'negados' => (new PermisoNegadoRepository())->Listar()
        ]);
    }

    /***
        AUTOR:  Martin Fierro Robles 11/11/2018
        Descripcion: VISTA PARA DENEGAR PERMISOS
    ***/
    public function getnuevo() {
        return $this->render('mantenimiento/permisos_negados/create.twig',[
            'company_name' => $this->config['company_name'],
            'company_name_min' => $this->config['company_name_min'],
            'title' => 'Denegar Permisos',
            'permisos' => (new PermisosRepository())->Listar(),
            'roles' => (new RolRepository())->Listar()
        ]);
    }

    /***
        AUTOR:  Martin Fierro Robles 12/11/2018
        Descripcion: VISTA PARA ACTUALIZAR UNA DENEGACION
    ***/
    public function getactualizar($id) {
        return $this->render('mantenimiento/permisos_negados/edit.twig',[
            'company_name' => $this->config['company_name'],
            'company_name_min' => $this->config['company_name_min'],
            'title' => 'Denegar Permisos',
            'denegar' => (new PermisoNegadoRepository())->Obtener($id),
            'permisos' => (new PermisosRepository())->Listar(),
            'roles' => (new RolRepository())->Listar()
        ]);
    }

    //region FUNCIONES PARA GUARDAR DETALLES
    /***
    AUTOR:  Martin Fierro Robles 11/11/2018
    Descripcion: Funcion para el Guardar Nuevo mensaje
     ***/
    public function postguardar() {
        $model = new PermisoNegado();
        $model->permiso_id  = $_POST['permiso_id'];
        $model->rol_id  = $_POST['rol_id'];

        $rh = (new PermisoNegadoRepository())->Guardar($model);
        if ($rh->response) {
            $rh->href = 'mantenimiento/denegar';
        }
        print_r(json_encode($rh));
    }
    //endregion


    //region FUNCIONES PARA ACTUALIZAR MENSAJES
    /***
    AUTOR:  Martin Fierro Robles 11/11/2018
    Descripcion: Funcion para actualizar el usuarios del sistema
     ***/
    public function postactualizar() {
        $model = (new PermisoNegadoRepository())->Obtener($_POST['id']);

        if (isset($_POST['permiso_id'])) $model->permiso_id = $_POST['permiso_id'];
        if (isset($_POST['rol_id'])) $model->rol_id = $_POST['rol_id'];

        $rh = (new PermisoNegadoRepository())->Guardar($model);
        if ($rh->response) {
            $rh->href = 'mantenimiento/denegar';
        }
        print_r(json_encode($rh));
    }
    //endregion
    //region ELIMINAR MENSAJE
    /***
    AUTOR:  Martin Fierro Robles 11/11/2018
    Descripcion: Funcion para elimnar un usuario
     ***/
    public function posteliminar() {
        $model = (new PermisoNegadoRepository())->Obtener($_POST['id']);

        $rh = (new PermisoNegadoRepository())->Eliminar($model);

        print_r(json_encode($rh));
    }
    //endregion
}