<?php
/**
 * Created by PhpStorm.
 * User: Martin Fierro
 * Date: 10/11/2018
 * Time: 01:18 PM
 */

namespace App\Controller;


use App\Models\Galeria;
use App\Repositories\GaleriaRepository;
use App\Repositories\ProductoRepository;
use App\Validations\GaleriaValidation;
use Core\Controller;
use Core\ServicesContainer;

class GaleriaController extends Controller
{
    private $config;
    public function __construct()
    {
        parent::__construct();
        $this->config = ServicesContainer::getConfig();
    }

    /***
    AUTOR:  Martin Fierro Robles 04/11/2018
    Descripcion: Vista Principal de Galerias
     ***/
    public function getindex()
    {
        return $this->render('mantenimiento/galerias/index.twig', [
            'company_name' => $this->config['company_name'],
            'company_name_min' => $this->config['company_name_min'],
            'title' => 'Listado de Galerias',
            'galerias' => (new GaleriaRepository())->Listar()
        ]);
    }

    /***
        AUTOR:  Martin Fierro Robles 11/11/2018
        Descripcion: VISTA PARA AGREGAR NUEVA FOTOGRAFIA
    ***/
    public function getnueva() {
        return $this->render('mantenimiento/galerias/create.twig', [
            'company_name' => $this->config['company_name'],
            'company_name_min' => $this->config['company_name_min'],
            'title' => 'Agregar fotografia',
            'galerias' => (new GaleriaRepository())->Listar(),
            'productos' => (new ProductoRepository())->Listar()
        ]);
    }

    //region FUNCIONES PARA ACTUALIZAR LA GALERIA
    /***
    AUTOR:  Martin Fierro Robles 09/11/2018
    Descripcion: Funcion para el Guardar Nueva categoria
     ***/
    public function postguardargaleria() {
        GaleriaValidation::validate($_POST);
        $model = new Galeria();
        $model->nombre  = $_POST['nombre'];
        $model->producto_id  = $_POST['producto_id'];

        $rh = (new GaleriaRepository())->Guardar($model);
        if ($rh->response) {
            $rh->href = 'mantenimiento/galerias';
        }
        print_r(json_encode($rh));
    }
    //endregion


    //region FUNCIONES PARA ACTUALIZAR GALERIA
    /***
    AUTOR:  Martin Fierro Robles 11/11/2018
    Descripcion: Funcion para actualizar el usuarios del sistema
     ***/
    public function postactualizargaleria() {
        GaleriaValidation::validate($_POST);

        $model = (new GaleriaRepository())->Obtener($_POST['id']);

        if (isset($_POST['nombre'])) $model->nombre = $_POST['nombre'];
        if (isset($_POST['producto_id'])) $model->producto_id = $_POST['producto_id'];

        $rh = (new GaleriaRepository())->Guardar($model);
        if ($rh->response) {
            $rh->href = 'mantenimiento/galerias';
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
        $model = (new GaleriaRepository())->Obtener($_POST['id']);

        $rh = (new GaleriaRepository())->Eliminar($model);

        print_r(json_encode($rh));
    }
    //endregion
}