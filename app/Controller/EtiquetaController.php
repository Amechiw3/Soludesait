<?php
/**
 * Created by PhpStorm.
 * User: Martin Fierro
 * Date: 10/11/2018
 * Time: 01:18 PM
 */

namespace App\Controller;


use App\Models\Etiqueta;
use App\Repositories\EtiquetaRepository;
use App\Validations\EtiquetaValidation;
use Core\Controller;
use Core\ServicesContainer;

class EtiquetaController extends Controller
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
        return $this->render('mantenimiento/etiquetas/index.twig',[
            'company_name' => $this->config['company_name'],
            'company_name_min' => $this->config['company_name_min'],
            'title' => 'Listado de etiquetas',
            'etiquetas' => (new EtiquetaRepository())->Listar()
        ]);
    }

    //region Funciones para Agregar Etiquetas
    /***
    AUTOR:  Martin Fierro Robles 09/11/2018
    Descripcion: Funcion para el Guardar Nueva categoria
     ***/
    public function postguardaretiqueta() {
        EtiquetaValidation::validate($_POST);
        $model = new Etiqueta();
        $model->nombre  = $_POST['nombre'];

        $rh = (new EtiquetaRepository())->Guardar($model);
        if ($rh->response) {
            $rh->href = 'mantenimiento/etiquetas';
        }
        print_r(json_encode($rh));
    }
    //endregion


    //region FUNCIONES PARA ACTUALIZAR CATEGORIA
    /***
    AUTOR:  Martin Fierro Robles 11/11/2018
    Descripcion: Funcion para actualizar el usuarios del sistema
     ***/
    public function postactualizaretiqueta() {
        EtiquetaValidation::validate($_POST);

        $model = (new EtiquetaRepository())->Obtener($_POST['id']);

        if (isset($_POST['nombre'])) $model->nombre = $_POST['nombre'];

        $rh = (new EtiquetaRepository())->Guardar($model);
        if ($rh->response) {
            $rh->href = 'mantenimiento/etiquetas';
        }
        print_r(json_encode($rh));
    }
    //endregion
    //region ELIMINAR ETIQUETA
    /***
    AUTOR:  Martin Fierro Robles 11/11/2018
    Descripcion: Funcion para elimnar un usuario
     ***/
    public function posteliminar() {
        $model = (new EtiquetaRepository())->Obtener($_POST['id']);

        $rh = (new EtiquetaRepository())->Eliminar($model);

        print_r(json_encode($rh));
    }
    //endregion
}