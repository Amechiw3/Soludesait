<?php
/**
 * Created by PhpStorm.
 * User: Martin Fierro
 * Date: 10/11/2018
 * Time: 01:01 PM
 */

namespace App\Controller;


use App\Helpers\UrlHelper;
use App\Models\Ciudad;
use App\Repositories\CiudadRepository;
use App\Repositories\EstadoRepository;
use App\Validations\CiudadValidation;
use Core\Controller;
use Core\ServicesContainer;

class CiudadController extends Controller
{
    private $config;
    public function __construct()
    {
        parent::__construct();
        $this->config = ServicesContainer::getConfig();
    }

    /***
    AUTOR:  Martin Fierro Robles 04/11/2018
    Descripcion: Vista Principal de Ciudades
     ***/
    public function getindex() {
        return $this->render('mantenimiento/ciudades/index.twig',[
            'company_name' => $this->config['company_name'],
            'company_name_min' => $this->config['company_name_min'],
            'title' => 'Listado de Ciudades',
            'ciudades' => (new CiudadRepository())->Listar(),
            'estados' => (new EstadoRepository())->Listar()
        ]);
    }
    
    /***
        AUTOR:  Martin Fierro Robles 10/11/2018
        Descripcion: Vista de ficha de registro de Ciudades
    ***/
    public function getnueva() {
        return $this->render('mantenimiento/ciudades/create.twig',[
            'company_name' => $this->config['company_name'],
            'company_name_min' => $this->config['company_name_min'],
            'title' => 'Nueva Ciudad',
            'estados' => (new EstadoRepository())->Listar()
        ]);
    }

    /***
    AUTOR:  Martin Fierro Robles 10/11/2018
    Descripcion: Vista de ficha de registro de Ciudades
     ***/
    public function geteditar($id) {
        if ($id <= 0) {
            UrlHelper::redirect('mantenimiento/ciudades');
        }
        return $this->render('mantenimiento/ciudades/edit.twig',[
            'company_name' => $this->config['company_name'],
            'company_name_min' => $this->config['company_name_min'],
            'title' => 'Editar Ciudad',
            'ciudad' => (new CiudadRepository())->Obtener($id),
            'estados' => (new EstadoRepository())->Listar()
        ]);
    }

    //region Funciones para Agregar ciudades
    /***
    AUTOR:  Martin Fierro Robles 07/11/2018
    Descripcion: Funcion para el Guardar Nueva ciudad
     ***/
    public function postguardarciudad() {
        CiudadValidation::validate($_POST);
        $model = new Ciudad();
        $model->ciudad  = $_POST['ciudad'];
        $model->estado_id = $_POST['estado_id'];

        $rh = (new CiudadRepository())->Guardar($model);
        if ($rh->response) {
            $rh->href = 'mantenimiento/ciudades';
        }
        print_r(json_encode($rh));
    }
    //endregion

    //region FUNCIONES PARA ACTUALIZAR CIUDADES

    /***
    AUTOR:  Martin Fierro Robles 10/11/2018
    Descripcion: Funcion para actualizar ciudad
     ***/
    public function postactualizarciudad() {
        CiudadValidation::validate($_POST);

        $model = (new CiudadRepository())->Obtener($_POST['id']);

        if (isset($_POST['ciudad']))    $model->ciudad      = $_POST['ciudad'];
        if (isset($_POST['estado_id']))  $model->estado_id    = $_POST['estado_id'];
        //$model->password = null;

        $rh = (new CiudadRepository())->Guardar($model);
        if ($rh->response) {
            $rh->href = 'mantenimiento/ciudades';
        }
        print_r(json_encode($rh));
    }
    //endregion

    //region ELIMINAR CIUDAD
    /***
    AUTOR:  Martin Fierro Robles 02/10/2018
    Descripcion: Funcion para elimnar un usuario
     ***/
    public function posteliminar() {
        $model = (new CiudadRepository())->Obtener($_POST['id']);

        $rh = (new CiudadRepository())->Eliminar($model);

        print_r(json_encode($rh));
    }
    //endregion
}