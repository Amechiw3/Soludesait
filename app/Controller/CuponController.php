<?php
/**
 * Created by PhpStorm.
 * User: Martin Fierro
 * Date: 10/11/2018
 * Time: 01:13 PM
 */

namespace App\Controller;


use App\Helpers\ResponseHelper;
use App\Models\Ciudad;
use App\Models\Cupon;
use App\Repositories\CuponRepository;
use App\Validations\CiudadValidation;
use App\Validations\CuponValidation;
use Core\Controller;
use Core\ServicesContainer;

class CuponController extends Controller
{
    private $config;
    public function __construct()
    {
        parent::__construct();
        $this->config = ServicesContainer::getConfig();
    }

    /***
    AUTOR:  Martin Fierro Robles 04/11/2018
    Descripcion: Vista Principal de Cupones
     ***/
    public function getindex() {
        return $this->render('mantenimiento/cupones/index.twig',[
            'company_name' => $this->config['company_name'],
            'company_name_min' => $this->config['company_name_min'],
            'title' => 'Listado de Cupones',
            'cupones' => (new CuponRepository())->Listar()
        ]);
    }

    //region Funciones para Agregar cupon
    /***
    AUTOR:  Martin Fierro Robles 07/11/2018
    Descripcion: Funcion para el Guardar Nuevo cupon
     ***/
    function check_in_range($start_date, $end_date, $evaluame) {
        $start_ts = strtotime($start_date);
        $end_ts = strtotime($end_date);
        $user_ts = strtotime($evaluame);
        return (($user_ts >= $start_ts) && ($user_ts <= $end_ts));
    }

    public function postguardarcupon() {
        CuponValidation::validate($_POST);
        $model = new Cupon();
        $model->codigo  = $_POST['codigo'];
        $model->descuento = $_POST['descuento'];
        $model->descripcion = $_POST['descripcion'];
        $model->inicio_fecha = $_POST['inicio_fecha'];
        $model->fin_fecha =  $_POST['fin_fecha'];

        $rh = new ResponseHelper();
        if ($model->fin_fecha > $model->inicio_fecha) {
            $rh = (new CuponRepository())->Guardar($model);
            if ($rh->response) {
                $rh->href = 'mantenimiento/cupones';
            }
        }
        print_r(json_encode($rh));
    }
    //endregion

    //region FUNCIONES PARA ACTUALIZAR CUPONES

    /***
    AUTOR:  Martin Fierro Robles 10/11/2018
    Descripcion: Funcion para actualizar el usuarios del sistema
     ***/
    public function postactualizarcupon() {
        CuponValidation::validate($_POST);

        $model = (new CuponRepository())->Obtener($_POST['id']);

        if (isset($_POST['codigo']))        $model->codigo          = $_POST['codigo'];
        if (isset($_POST['descuento']))     $model->descuento       = $_POST['descuento'];
        if (isset($_POST['descripcion']))   $model->descripcion     = $_POST['descripcion'];
        if (isset($_POST['inicio_fecha']))  $model->inicio_fecha    = $_POST['inicio_fecha'];
        if (isset($_POST['fin_fecha']))     $model->fin_fecha       = $_POST['fin_fecha'];

        $rh = new ResponseHelper();
        if ($model->fin_fecha > $model->inicio_fecha) {
            $rh = (new CuponRepository())->Guardar($model);
            if ($rh->response) {
                $rh->href = 'mantenimiento/cupones';
            }
        }
        print_r(json_encode($rh));
    }
    //endregion

    //region ELIMINAR CUPON
    /***
    AUTOR:  Martin Fierro Robles 02/10/2018
    Descripcion: Funcion para elimnar un usuario
     ***/
    public function posteliminar() {
        $model = (new CuponRepository())->Obtener($_POST['id']);
        $rh = (new CuponRepository())->Eliminar($model);

        print_r(json_encode($rh));
    }
    //endregion
}