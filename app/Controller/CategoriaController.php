<?php
/**
 * Created by PhpStorm.
 * User: Martin Fierro
 * Date: 10/11/2018
 * Time: 01:12 PM
 */

namespace App\Controller;


use App\Models\Categoria;
use App\Repositories\CategoriaRepository;
use App\Validations\CategoriaValidation;
use Core\Controller;
use Core\ServicesContainer;

class CategoriaController extends Controller
{
    private $config;
    public function __construct()
    {
        parent::__construct();
        $this->config = ServicesContainer::getConfig();
    }

    /***
    AUTOR:  Martin Fierro Robles 04/11/2018
    Descripcion: Vista Principal de Categorias
     ***/
    public function getindex() {
        return $this->render('mantenimiento/categorias/index.twig',[
            'company_name' => $this->config['company_name'],
            'company_name_min' => $this->config['company_name_min'],
            'title' => 'Listado de Categorias',
            'categorias' => (new CategoriaRepository())->Listar()
        ]);
    }

    //region Funciones para Agregar Categorias
    /***
    AUTOR:  Martin Fierro Robles 07/11/2018
    Descripcion: Funcion para el Guardar Nueva categoria
     ***/
    public function postguardarcategoria() {
        CategoriaValidation::validate($_POST);
        $model = new Categoria();
        $model->nombre  = $_POST['nombre'];

        $rh = (new CategoriaRepository())->Guardar($model);
        if ($rh->response) {
            $rh->href = 'mantenimiento/categorias';
        }
        print_r(json_encode($rh));
    }
    //endregion

    //region FUNCIONES PARA ACTUALIZAR CATEGORIA
    /***
    AUTOR:  Martin Fierro Robles 26/09/2018
    Descripcion: Funcion para actualizar el usuarios del sistema
     ***/
    public function postactualizarcategoria() {
        CategoriaValidation::validate($_POST);

        $model = (new CategoriaRepository())->Obtener($_POST['id']);

        if (isset($_POST['nombre'])) $model->nombre = $_POST['nombre'];

        $rh = (new CategoriaRepository())->Guardar($model);
        if ($rh->response) {
            $rh->href = 'mantenimiento/categorias';
        }
        print_r(json_encode($rh));
    }
    //endregion

    //region ELIMINAR CATEGORIA
    /***
    AUTOR:  Martin Fierro Robles 02/10/2018
    Descripcion: Funcion para elimnar un usuario
     ***/
    public function posteliminar() {
        $model = (new CategoriaRepository())->Obtener($_POST['id']);

        $rh = (new CategoriaRepository())->Eliminar($model);

        print_r(json_encode($rh));
    }
    //endregion
}