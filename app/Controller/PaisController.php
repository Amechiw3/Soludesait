<?php
/**
 * Created by PhpStorm.
 * User: Martin Fierro
 * Date: 10/11/2018
 * Time: 01:21 PM
 */

namespace App\Controller;


use App\Models\Pais;
use App\Repositories\PaisRepository;
use App\Validations\PaisValidation;
use Core\Controller;
use Core\ServicesContainer;

class PaisController extends Controller
{
    private $config;
    public function __construct()
    {
        parent::__construct();
        $this->config = ServicesContainer::getConfig();
    }

    /***
    AUTOR:  Martin Fierro Robles 04/11/2018
    Descripcion: Vista Principal de Paises
     ***/
    public function getindex() {
        return $this->render('mantenimiento/paises/index.twig',[
            'company_name' => $this->config['company_name'],
            'company_name_min' => $this->config['company_name_min'],
            'title' => 'Listado de Paises',
            'paises' => (new PaisRepository())->Listar()
        ]);
    }
    //region FUNCIONES PARA GUARDAR DETALLES
    /***
    AUTOR:  Martin Fierro Robles 11/11/2018
    Descripcion: Funcion para el Guardar Nuevo mensaje
     ***/
    public function postguardar() {
        PaisValidation::validate($_POST);
        $model = new Pais();
        $model->pais  = $_POST['pais'];

        $rh = (new PaisRepository())->Guardar($model);
        if ($rh->response) {
            $rh->href = 'mantenimiento/paises';
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
        PaisValidation::validate($_POST);

        $model = (new PaisRepository())->Obtener($_POST['id']);

        if (isset($_POST['pais'])) $model->pais = $_POST['pais'];

        $rh = (new PaisRepository())->Guardar($model);
        if ($rh->response) {
            $rh->href = 'mantenimiento/paises';
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
        $model = (new PaisRepository())->Obtener($_POST['id']);

        $rh = (new PaisRepository())->Eliminar($model);

        print_r(json_encode($rh));
    }
    //endregion
}