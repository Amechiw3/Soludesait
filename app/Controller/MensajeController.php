<?php
/**
 * Created by PhpStorm.
 * User: Martin Fierro
 * Date: 10/11/2018
 * Time: 01:20 PM
 */

namespace App\Controller;


use App\Models\Mensaje;
use App\Repositories\MensajesRepository;
use App\Validations\HistorialValidation;
use App\Validations\MensajeValidation;
use Core\Controller;
use Core\ServicesContainer;

class MensajeController extends Controller
{
    private $config;
    public function __construct()
    {
        parent::__construct();
        $this->config = ServicesContainer::getConfig();
    }

    /***
    AUTOR:  Martin Fierro Robles 04/11/2018
    Descripcion: Vista Principal de Mensajes
     ***/
    public function getindex() {
        return $this->render('mantenimiento/mensajes/index.twig',[
            'company_name' => $this->config['company_name'],
            'company_name_min' => $this->config['company_name_min'],
            'title' => 'Listado de Mensajes',
            'mensajes' => (new MensajesRepository())->Listar()
        ]);
    }

    //region FUNCIONES PARA GUARDAR MENSAJE
    /***
    AUTOR:  Martin Fierro Robles 11/11/2018
    Descripcion: Funcion para el Guardar Nuevo mensaje
     ***/
    public function postguardar() {
        MensajeValidation::validate($_POST);
        $model = new Mensaje();
        $model->nombre  = $_POST['nombre'];
        $model->correo  = $_POST['correo'];
        $model->mensaje  = $_POST['mensaje'];
        $model->visto  = 0;


        $rh = (new MensajesRepository())->Guardar($model);
        if ($rh->response) {
            $rh->href = 'mantenimiento/galerias';
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
        MensajeValidation::validate($_POST);

        $model = (new MensajesRepository())->Obtener($_POST['id']);

        if (isset($_POST['nombre'])) $model->nombre = $_POST['nombre'];
        if (isset($_POST['correo'])) $model->correo = $_POST['correo'];
        if (isset($_POST['mensaje'])) $model->mensaje = $_POST['mensaje'];
        if (isset($_POST['visto'])) $model->visto = $_POST['visto'];

        $rh = (new MensajesRepository())->Guardar($model);
        if ($rh->response) {
            $rh->href = 'mantenimiento/mensajes';
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
        $model = (new MensajesRepository())->Obtener($_POST['id']);

        $rh = (new MensajesRepository())->Eliminar($model);

        print_r(json_encode($rh));
    }
    //endregion
}