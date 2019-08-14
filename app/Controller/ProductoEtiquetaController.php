<?php
/**
 * Created by PhpStorm.
 * User: Martin Fierro
 * Date: 10/11/2018
 * Time: 01:21 PM
 */

namespace App\Controller;


use App\Models\Producto_Etiqueta;
use App\Repositories\EtiquetaRepository;
use App\Repositories\ProductoEtiquetaRepository;
use App\Repositories\ProductoRepository;
use Core\Controller;
use Core\ServicesContainer;

class ProductoEtiquetaController extends Controller
{
    private $config;
    public function __construct()
    {
        parent::__construct();
        $this->config = ServicesContainer::getConfig();
    }

    /***
    AUTOR:  Martin Fierro Robles 04/11/2018
    Descripcion: Vista Principal de Etiquetas de Producto
     ***/
    public function getindex() {
        return $this->render('mantenimiento/productos_etiquetas/index.twig',[
            'company_name' => $this->config['company_name'],
            'company_name_min' => $this->config['company_name_min'],
            'title' => 'Listado de Etiquetas de Producto',
            'productos_etiquetas' => (new ProductoEtiquetaRepository())->Listar()
        ]);
    }
    /***
        AUTOR:  Martin Fierro Robles 12/11/2018
        Descripcion: VISTA PARA AGREGAR ETIQEUTAS A PRODUCTOS
    ***/
    public function getnuevo() {
        return $this->render('mantenimiento/productos_etiquetas/create.twig',[
            'company_name' => $this->config['company_name'],
            'company_name_min' => $this->config['company_name_min'],
            'title' => 'Agregar Etiqueta a Producto',
            'productos' => (new ProductoRepository())->Listar(),
            'etiquetas' => (new EtiquetaRepository())->Listar()
        ]);
    }

    /***
    AUTOR:  Martin Fierro Robles 12/11/2018
    Descripcion: VISTA PARA ACTUALIZAR ETIQEUTAS A PRODUCTOS
     ***/
    public function getactualizar($id) {
        return $this->render('mantenimiento/productos_etiquetas/edit.twig',[
            'company_name' => $this->config['company_name'],
            'company_name_min' => $this->config['company_name_min'],
            'title' => 'Agregar Etiqueta a Producto',
            'productos_etiquetas' => (new ProductoEtiquetaRepository())->Obtener($id),
            'productos' => (new ProductoRepository())->Listar(),
            'etiquetas' => (new EtiquetaRepository())->Listar()
        ]);
    }


    //region FUNCIONES PARA GUARDAR DETALLES
    /***
    AUTOR:  Martin Fierro Robles 11/11/2018
    Descripcion: Funcion para el Guardar Nuevo mensaje
     ***/
    public function postguardar() {
        $model = new Producto_Etiqueta();
        $model->producto_id = $_POST['producto_id'];
        $model->etiqueta_id = $_POST['etiqueta_id'];

        $rh = (new ProductoEtiquetaRepository())->Guardar($model);
        if ($rh->response) {
            $rh->href = 'mantenimiento/productos_etiquetas';
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
        $model = (new ProductoEtiquetaRepository())->Obtener($_POST['id']);

        if (isset($_POST['producto_id'])) $model->producto_id = $_POST['producto_id'];
        if (isset($_POST['etiqueta_id'])) $model->etiqueta_id = $_POST['etiqueta_id'];

        $rh = (new ProductoEtiquetaRepository())->Guardar($model);
        if ($rh->response) {
            $rh->href = 'mantenimiento/productos_etiquetas';
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
        $model = (new ProductoEtiquetaRepository())->Obtener($_POST['id']);

        $rh = (new ProductoEtiquetaRepository())->Eliminar($model);

        print_r(json_encode($rh));
    }
    //endregion
}