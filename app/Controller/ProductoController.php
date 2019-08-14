<?php
/**
 * Created by PhpStorm.
 * User: Martin Fierro
 * Date: 10/11/2018
 * Time: 01:21 PM
 */

namespace App\Controller;


use App\Models\Producto;
use App\Repositories\CategoriaRepository;
use App\Repositories\ProductoRepository;
use App\Validations\ProductoValidation;
use Core\Controller;
use Core\ServicesContainer;

class ProductoController extends Controller
{
    private $config;
    public function __construct()
    {
        parent::__construct();
        $this->config = ServicesContainer::getConfig();
    }

    /***
    AUTOR:  Martin Fierro Robles 04/11/2018
    Descripcion: Vista Principal de Productos
     ***/
    public function getindex() {
        return $this->render('mantenimiento/productos/index.twig',[
            'company_name' => $this->config['company_name'],
            'company_name_min' => $this->config['company_name_min'],
            'title' => 'Listado de Productos',
            'productos' => (new ProductoRepository())->Listar()
        ]);
    }

    /***
        AUTOR:  Martin Fierro Robles 12/11/2018
        Descripcion: VISTA PARA AGREGAR NUEVO PRODUCTO
    ***/
    public function getnuevo() {
        return $this->render('mantenimiento/productos/create.twig',[
            'company_name' => $this->config['company_name'],
            'company_name_min' => $this->config['company_name_min'],
            'title' => 'Agregar Producto',
            'categorias' => (new CategoriaRepository())->Listar()
        ]);
    }

    /***
    AUTOR:  Martin Fierro Robles 12/11/2018
    Descripcion: VISTA PARA AGREGAR NUEVO PRODUCTO
     ***/
    public function getactualizar($id) {
        return $this->render('mantenimiento/productos/edit.twig',[
            'company_name' => $this->config['company_name'],
            'company_name_min' => $this->config['company_name_min'],
            'title' => 'Agregar Producto',
            'producto' => (new ProductoRepository())->Obtener($id),
            'categorias' => (new CategoriaRepository())->Listar()
        ]);
    }

    //region FUNCIONES PARA GUARDAR DETALLES
    /***
    AUTOR:  Martin Fierro Robles 11/11/2018
    Descripcion: Funcion para el Guardar Nuevo mensaje
     ***/
    public function postguardar() {
        ProductoValidation::validate($_POST);
        $model = new Producto();
        $model->nombre  = $_POST['nombre'];
        $model->breve_descripcion  = $_POST['breve_descripcion'];
        $model->descripcion  = $_POST['descripcion'];
        $model->regular_precio  = $_POST['regular_precio'];
        $model->descuento_precio  = (isset($_POST['descuento_precio']) ? $_POST['descuento_precio'] : 0);
        $model->categoria_id  = $_POST['categoria_id'];

        $rh = (new ProductoRepository())->Guardar($model);
        if ($rh->response) {
            $rh->href = 'mantenimiento/productos';
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
        ProductoValidation::validate($_POST);
        $model = (new ProductoRepository())->Obtener($_POST['id']);

        if (isset($_POST['nombre'])) $model->nombre = $_POST['nombre'];
        if (isset($_POST['breve_descripcion'])) $model->breve_descripcion = $_POST['breve_descripcion'];
        if (isset($_POST['descripcion'])) $model->descripcion = $_POST['descripcion'];
        if (isset($_POST['regular_precio'])) $model->regular_precio = $_POST['regular_precio'];
        if (isset($_POST['descuento_precio'])) $model->descuento_precio = $_POST['descuento_precio'];
        if (isset($_POST['categoria_id'])) $model->categoria_id = $_POST['categoria_id'];

        $rh = (new ProductoRepository())->Guardar($model);
        if ($rh->response) {
            $rh->href = 'mantenimiento/productos';
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
        $model = (new ProductoRepository())->Obtener($_POST['id']);

        $rh = (new ProductoRepository())->Eliminar($model);

        print_r(json_encode($rh));
    }
    //endregion
}