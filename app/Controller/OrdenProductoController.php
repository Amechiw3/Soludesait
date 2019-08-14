<?php
/**
 * Created by PhpStorm.
 * User: Martin Fierro
 * Date: 10/11/2018
 * Time: 01:20 PM
 */

namespace App\Controller;


use App\Models\Orden_Producto;
use App\Repositories\OrdenProductoRepository;
use App\Repositories\ProductoRepository;
use App\Repositories\Venta_OrdenRepository;
use App\Validations\Orden_ProductoValidation;
use Core\Controller;
use Core\ServicesContainer;

class OrdenProductoController extends Controller
{
    private $config;
    public function __construct()
    {
        parent::__construct();
        $this->config = ServicesContainer::getConfig();
    }

    /***
    AUTOR:  Martin Fierro Robles 04/11/2018
    Descripcion: Vista Principal de Ordenes
     ***/
    public function getindex() {
        return $this->render('mantenimiento/ordenes_productos/index.twig',[
            'company_name' => $this->config['company_name'],
            'company_name_min' => $this->config['company_name_min'],
            'title' => 'Listado de Ordenes',
            'ordenes' => (new OrdenProductoRepository())->Listar()
        ]);
    }

    /***
        AUTOR:  Martin Fierro Robles 11/11/2018
        Descripcion: VISTA PARA AGREGAR NUEVA ORDEN
    ***/
    public function getnuevo() {
        return $this->render('mantenimiento/ordenes_productos/create.twig',[
            'company_name' => $this->config['company_name'],
            'company_name_min' => $this->config['company_name_min'],
            'title' => 'Agregar Ordenes',
            'productos' => (new ProductoRepository())->Listar(),
            'ventas' => (new Venta_OrdenRepository())->Listar()
        ]);
    }

    /***
        AUTOR:  Martin Fierro Robles 11/11/2018
        Descripcion: VISTA PARA ACTUALIZAR ORDEN
    ***/
    public function getactualizar($id) {
        return $this->render('mantenimiento/ordenes_productos/create.twig',[
            'company_name' => $this->config['company_name'],
            'company_name_min' => $this->config['company_name_min'],
            'title' => 'Agregar Ordenes',
            'productos' => (new ProductoRepository())->Listar(),
            'ventas' => (new Venta_OrdenRepository())->Listar(),
            'orden' => (new OrdenProductoRepository())->Obtener($id)
        ]);
    }

    //region FUNCIONES PARA GUARDAR DETALLES
    /***
    AUTOR:  Martin Fierro Robles 11/11/2018
    Descripcion: Funcion para el Guardar Nuevo mensaje
     ***/
    public function postguardar() {
        Orden_ProductoValidation::validate($_POST);
        $model = new Orden_Producto();
        $model->orden_venta_id  = $_POST['orden_venta_id'];
        $model->producto_id  = $_POST['producto_id'];
        $model->precio  = $_POST['precio'];
        $model->cantidad  = $_POST['cantidad'];
        $model->subtotal = $_POST['cantidad'] * $_POST['precio'];

        $rh = (new OrdenProductoRepository())->Guardar($model);
        if ($rh->response) {
            $rh->href = 'mantenimiento/detalles';
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
        Orden_ProductoValidation::validate($_POST);

        $model = (new OrdenProductoRepository())->Obtener($_POST['id']);

        if (isset($_POST['orden_venta_id'])) $model->orden_venta_id = $_POST['orden_venta_id'];
        if (isset($_POST['producto_id'])) $model->producto_id = $_POST['producto_id'];
        if (isset($_POST['precio'])) $model->precio = $_POST['precio'];
        if (isset($_POST['cantidad'])) $model->cantidad = $_POST['cantidad'];
        $model->subtotal = $_POST['cantidad'] * $_POST['precio'];

        $rh = (new OrdenProductoRepository())->Guardar($model);
        if ($rh->response) {
            $rh->href = 'mantenimiento/detalles';
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
        $model = (new OrdenProductoRepository())->Obtener($_POST['id']);

        $rh = (new OrdenProductoRepository())->Eliminar($model);

        print_r(json_encode($rh));
    }
    //endregion
}