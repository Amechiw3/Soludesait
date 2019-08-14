<?php
/**
 * Created by PhpStorm.
 * User: Martin Fierro
 * Date: 10/11/2018
 * Time: 01:17 PM
 */

namespace App\Controller;


use App\Models\Estado;
use App\Repositories\EstadoRepository;
use App\Repositories\PaisRepository;
use App\Validations\EstadoValidation;
use Core\Controller;
use Core\ServicesContainer;

class EstadoController extends Controller
{
    private $config;
    public function __construct()
    {
        parent::__construct();
        $this->config = ServicesContainer::getConfig();
    }

    /***
    AUTOR:  Martin Fierro Robles 04/11/2018
    Descripcion: Vista Principal de Estados
     ***/
    public function getindex() {
        return $this->render('mantenimiento/estados/index.twig',[
            'company_name' => $this->config['company_name'],
            'company_name_min' => $this->config['company_name_min'],
            'title' => 'Listado de Estados',
            'estados' => (new EstadoRepository())->Listar()
        ]);
    }

    /***
        AUTOR:  Martin Fierro Robles 10/11/2018
        Descripcion: VISTA PARA GUARDAR NUEVOS ESTADOS
    ***/
    public function getnuevo() {
        return $this->render('mantenimiento/estados/create.twig',[
            'company_name' => $this->config['company_name'],
            'company_name_min' => $this->config['company_name_min'],
            'title' => 'Nuevo Estado',
            'paises' => (new PaisRepository())->Listar()
        ]);
    }

    /***
        AUTOR:  Martin Fierro Robles 10/11/2018
        Descripcion: VISTA PARA ACTUALIZAR ESTADOS
    ***/
    public function getactualizar(int $id) {
        return $this->render('mantenimiento/estados/edit.twig',[
            'company_name' => $this->config['company_name'],
            'company_name_min' => $this->config['company_name_min'],
            'title' => 'Nuevo Estado',
            'estado' => (new EstadoRepository())->Obtener($id),
            'paises' => (new PaisRepository())->Listar()
        ]);
    }

    //region Funciones para Agregar ciudades
    /***
    AUTOR:  Martin Fierro Robles 07/11/2018
    Descripcion: Funcion para el Guardar Nueva ciudad
     ***/
    public function postguardarestado() {
        EstadoValidation::validate($_POST);
        $model = new Estado();
        $model->estado  = $_POST['estado'];
        $model->pais_id = $_POST['pais_id'];

        $rh = (new EstadoRepository())->Guardar($model);
        if ($rh->response) {
            $rh->href = 'mantenimiento/estados';
        }
        print_r(json_encode($rh));
    }
    //endregion

    //region FUNCIONES PARA ACTUALIZAR CIUDADES

    /***
    AUTOR:  Martin Fierro Robles 10/11/2018
    Descripcion: Funcion para actualizar ciudad
     ***/
    public function postactualizarestado() {
        EstadoValidation::validate($_POST);

        $model = (new EstadoRepository())->Obtener($_POST['id']);

        if (isset($_POST['estado']))    $model->estado      = $_POST['estado'];
        if (isset($_POST['pais_id']))  $model->pais_id    = $_POST['pais_id'];
        //$model->password = null;

        $rh = (new EstadoRepository())->Guardar($model);
        if ($rh->response) {
            $rh->href = 'mantenimiento/estados';
        }
        print_r(json_encode($rh));
    }
    //endregion

    //region ELIMINAR ESTADO
    /***
    AUTOR:  Martin Fierro Robles 02/10/2018
    Descripcion: Funcion para elimnar un usuario
     ***/
    public function posteliminar() {
        $model = (new EstadoRepository())->Obtener($_POST['id']);

        $rh = (new EstadoRepository())->Eliminar($model);

        print_r(json_encode($rh));
    }
    //endregion
}