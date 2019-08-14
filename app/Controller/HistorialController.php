<?php
/**
 * Created by PhpStorm.
 * User: Martin Fierro
 * Date: 10/11/2018
 * Time: 01:20 PM
 */

namespace App\Controller;


use App\Models\Historial;
use App\Repositories\HistorialRepository;
use App\Repositories\UsuarioRepository;
use App\Validations\HistorialValidation;
use Core\Controller;
use Core\ServicesContainer;

class HistorialController extends Controller
{
    private $config;
    public function __construct()
    {
        parent::__construct();
        $this->config = ServicesContainer::getConfig();
    }

    /***
    AUTOR:  Martin Fierro Robles 04/11/2018
    Descripcion: Vista Principal de Historiales
     ***/
    public function getindex() {
        return $this->render('mantenimiento/historiales/index.twig',[
            'company_name' => $this->config['company_name'],
            'company_name_min' => $this->config['company_name_min'],
            'title' => 'Listado de Historiales',
            'historiales' => (new HistorialRepository())->Listar()
        ]);
    }

    /***
        AUTOR:  Martin Fierro Robles 11/11/2018
        Descripcion: VISTA PARA AGREGAR NUEVO INGRESO
    ***/
    public function getnuevo() {
        return $this->render('mantenimiento/historiales/create.twig',[
            'company_name' => $this->config['company_name'],
            'company_name_min' => $this->config['company_name_min'],
            'title' => 'Agregar Historial',
            'usuarios' => (new UsuarioRepository())->Listar()
        ]);
    }

    /***
        AUTOR:  Martin Fierro Robles 11/11/2018
        Descripcion: VISTA PARA ACTUALIZAR INGRESO
    ***/
    public function getactualizar(int $id) {
        return $this->render('mantenimiento/historiales/edit.twig',[
            'company_name' => $this->config['company_name'],
            'company_name_min' => $this->config['company_name_min'],
            'title' => 'Agregar Historial',
            'historial' => (new HistorialRepository())->Obtener($id),
            'usuarios' => (new UsuarioRepository())->Listar()
        ]);
    }

    //region FUNCIONES PARA ACTUALIZAR LA GALERIA
    /***
    AUTOR:  Martin Fierro Robles 09/11/2018
    Descripcion: Funcion para el Guardar Nueva categoria
     ***/
    public function postguardarhistorial() {
        HistorialValidation::validate($_POST);
        $model = new Historial();
        $model->ingreso  = $_POST['ingreso'];
        $model->usuario_id  = $_POST['usuario_id'];

        $rh = (new HistorialRepository())->Guardar($model);
        if ($rh->response) {
            $rh->href = 'mantenimiento/historial';
        }
        print_r(json_encode($rh));
    }
    //endregion


    //region FUNCIONES PARA ACTUALIZAR GALERIA
    /***
    AUTOR:  Martin Fierro Robles 11/11/2018
    Descripcion: Funcion para actualizar el usuarios del sistema
     ***/
    public function postactualizarhistorial() {
        HistorialValidation::validate($_POST);

        $model = (new HistorialRepository())->Obtener($_POST['id']);

        if (isset($_POST['ingreso'])) $model->ingreso = $_POST['ingreso'];
        if (isset($_POST['usuario_id'])) $model->usuario_id = $_POST['usuario_id'];

        $rh = (new HistorialRepository())->Guardar($model);
        if ($rh->response) {
            $rh->href = 'mantenimiento/historial';
        }
        print_r(json_encode($rh));
    }
    //endregion
    //region ELIMINAR GALERIA
    /***
    AUTOR:  Martin Fierro Robles 11/11/2018
    Descripcion: Funcion para elimnar un usuario
     ***/
    public function posteliminar() {
        $model = (new HistorialRepository())->Obtener($_POST['id']);

        $rh = (new HistorialRepository())->Eliminar($model);

        print_r(json_encode($rh));
    }
    //endregion
}