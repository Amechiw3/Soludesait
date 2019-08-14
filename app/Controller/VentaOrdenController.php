<?php
/**
 * Created by PhpStorm.
 * User: Martin Fierro
 * Date: 10/11/2018
 * Time: 01:22 PM
 */

namespace App\Controller;


use App\Models\Venta_Orden;
use App\Repositories\CuponRepository;
use App\Repositories\DireccionRepository;
use App\Repositories\UsuarioRepository;
use App\Repositories\Venta_OrdenRepository;
use App\Validations\Venta_OrdenValidation;
use Core\Controller;
use Core\ServicesContainer;

class VentaOrdenController extends Controller
{
    private $config;
    public function __construct()
    {
        parent::__construct();
        $this->config = ServicesContainer::getConfig();
    }

    /***
    AUTOR:  Martin Fierro Robles 04/11/2018
    Descripcion: Vista Principal de Ventas
     ***/
    public function getindex() {
        return $this->render('mantenimiento/ventas_ordenes/index.twig',[
            'company_name' => $this->config['company_name'],
            'company_name_min' => $this->config['company_name_min'],
            'title' => 'Listado de Ventas',
            'ventas' => (new Venta_OrdenRepository())->Listar()
        ]);
    }
    
    /***
        AUTOR:  Martin Fierro Robles 12/11/2018
        Descripcion: VISTA PARA AGREGAR NUEVA VENTA
    ***/
    public function getnuevo() {
        return $this->render('mantenimiento/ventas_ordenes/create.twig',[
            'company_name' => $this->config['company_name'],
            'company_name_min' => $this->config['company_name_min'],
            'title' => 'Listado de Ventas',
            'usuarios' => (new UsuarioRepository())->Listar(),
            'direcciones' => (new DireccionRepository())->Listar(),
            'cupones' => (new CuponRepository())->Listar()
        ]);
    }

    /***
        AUTOR:  Martin Fierro Robles 13/11/2018
        Descripcion: VISTA PARA ACTUALIZAR LA VENTA
    ***/
    public function getactualizar($id) {
        return $this->render('mantenimiento/ventas_ordenes/edit.twig',[
            'company_name' => $this->config['company_name'],
            'company_name_min' => $this->config['company_name_min'],
            'title' => 'Listado de Ventas',
            'venta' => (new Venta_OrdenRepository())->Obtener($id),
            'usuarios' => (new UsuarioRepository())->Listar(),
            'direcciones' => (new DireccionRepository())->Listar(),
            'cupones' => (new CuponRepository())->Listar()
        ]);
    }

    //region FUNCIONES PARA GUARDAR DETALLES
    /***
    AUTOR:  Martin Fierro Robles 12/11/2018
    Descripcion: Funcion para el Guardar Nuevo mensaje
     ***/
    public function postguardar() {
        Venta_OrdenValidation::validate($_POST);
        $model = new Venta_Orden();
        $model->usuario_id = $_POST['usuario_id'];
        $model->direccion_id = $_POST['direccion_id'];
        $model->orden_fecha = $_POST['orden_fecha'];
        $model->total = $_POST['total'];
        $model->cupon_id = $_POST['cupon_id'];
        $model->status_at = $_POST['status_at'];

        $rh = (new Venta_OrdenRepository())->Guardar($model);
        if ($rh->response) {
            $rh->href = 'mantenimiento/ventas';
        }
        print_r(json_encode($rh));
    }
    //endregion


    //region FUNCIONES PARA ACTUALIZAR MENSAJES
    /***
    AUTOR:  Martin Fierro Robles 12/11/2018
    Descripcion: Funcion para actualizar el usuarios del sistema
     ***/
    public function postactualizar() {
        $model = (new Venta_OrdenRepository())->Obtener($_POST['id']);

        if (isset($_POST['usuario_id'])) $model->usuario_id = $_POST['usuario_id'];
        if (isset($_POST['direccion_id'])) $model->direccion_id = $_POST['direccion_id'];
        if (isset($_POST['orden_fecha'])) $model->orden_fecha = $_POST['orden_fecha'];
        if (isset($_POST['total'])) $model->total = $_POST['total'];
        if (isset($_POST['cupon_id'])) $model->cupon_id = $_POST['cupon_id'];
        if (isset($_POST['status_at'])) $model->status_at = $_POST['status_at'];

        $rh = (new Venta_OrdenRepository())->Guardar($model);
        if ($rh->response) {
            $rh->href = 'mantenimiento/ventas';
        }
        print_r(json_encode($rh));
    }
    //endregion
    //region ELIMINAR MENSAJE
    /***
    AUTOR:  Martin Fierro Robles 12/11/2018
    Descripcion: Funcion para elimnar una VENTA
     ***/
    public function posteliminar() {
        $model = (new Venta_OrdenRepository())->Obtener($_POST['id']);

        $rh = (new Venta_OrdenRepository())->Eliminar($model);

        print_r(json_encode($rh));
    }
    //endregion
}