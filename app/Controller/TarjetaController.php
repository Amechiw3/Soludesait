<?php
/**
 * Created by PhpStorm.
 * User: Martin Fierro
 * Date: 10/11/2018
 * Time: 01:18 PM
 */

namespace App\Controller;


use App\Models\Etiqueta;
use App\Models\Tarjeta;
use App\Repositories\EtiquetaRepository;
use App\Repositories\TarjetaRepository;
use App\Repositories\UsuarioRepository;
use App\Validations\EtiquetaValidation;
use App\Validations\TarjetaValidation;
use Core\Controller;
use Core\Log;
use Core\ServicesContainer;

class TarjetaController extends Controller
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
        return $this->render('mantenimiento/tarjetas/index.twig',[
            'company_name' => $this->config['company_name'],
            'company_name_min' => $this->config['company_name_min'],
            'title' => 'Listado de etiquetas',
            'tarjetas' => (new TarjetaRepository())->Listar()
        ]);
    }

    /***
        AUTOR:  Martin Fierro Robles 12/11/2018
        Descripcion: VISTA PARA AGREGAR UNA TARJETA
    ***/
    public function getnuevo() {
        return $this->render('mantenimiento/tarjetas/create.twig',[
            'company_name' => $this->config['company_name'],
            'company_name_min' => $this->config['company_name_min'],
            'title' => 'Agregar Tarjeta',
            'usuarios' => (new UsuarioRepository())->Listar()
        ]);
    }

    /***
        AUTOR:  Martin Fierro Robles 12/11/2018
        Descripcion: VISTA PARA ACTUALIZAR UNA TARJETA
    ***/
    public function getactualizar($id) {
        return $this->render('mantenimiento/tarjetas/edit.twig',[
            'company_name' => $this->config['company_name'],
            'company_name_min' => $this->config['company_name_min'],
            'title' => 'Actualizando Tarjeta',
            'tarjeta' => (new TarjetaRepository())->Obtener($id),
            'usuarios' => (new UsuarioRepository())->Listar()
        ]);
    }

    //region FUNCIONES PARA GUARDAR DETALLES
    /***
    AUTOR:  Martin Fierro Robles 11/11/2018
    Descripcion: Funcion para el Guardar Nuevo mensaje
     ***/
    public function postguardar() {
        TarjetaValidation::validate($_POST);
        $model = new Tarjeta();
        $model->nombre = $_POST['nombre'];
        $model->apaterno = $_POST['apaterno'];
        $model->amaterno = $_POST['amaterno'];
        $model->numero = $_POST['numero'];
        $model->fecha = $_POST['fecha'];
        $model->cvv = $_POST['cvv'];
        $model->usuario_id = $_POST['usuario_id'];

        $rh = (new TarjetaRepository())->Guardar($model);

        if ($rh->response) {
            $rh->href = 'mantenimiento/tarjetas';
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
        TarjetaValidation::validate($_POST);
        $model = (new TarjetaRepository())->Obtener($_POST['id']);

        if (isset($_POST['nombre'])) $model->nombre = $_POST['nombre'];
        if (isset($_POST['apaterno'])) $model->apaterno = $_POST['apaterno'];
        if (isset($_POST['amaterno'])) $model->amaterno = $_POST['amaterno'];
        if (isset($_POST['numero'])) $model->numero = $_POST['numero'];
        if (isset($_POST['fecha'])) $model->fecha = $_POST['fecha'];
        if (isset($_POST['cvv'])) $model->cvv = $_POST['cvv'];
        if (isset($_POST['usuario_id'])) $model->usuario_id = $_POST['usuario_id'];

        $rh = (new TarjetaRepository())->Guardar($model);
        if ($rh->response) {
            $rh->href = 'mantenimiento/tarjetas';
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
        $model = (new TarjetaRepository())->Obtener($_POST['id']);

        $rh = (new TarjetaRepository())->Eliminar($model);

        print_r(json_encode($rh));
    }
    //endregion
}