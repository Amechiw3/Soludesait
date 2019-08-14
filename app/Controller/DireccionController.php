<?php
/**
 * Created by PhpStorm.
 * User: Martin Fierro
 * Date: 10/11/2018
 * Time: 01:14 PM
 */

namespace App\Controller;


use App\Models\Ciudad;
use App\Models\Direccion;
use App\Repositories\CiudadRepository;
use App\Repositories\DireccionRepository;
use App\Repositories\EstadoRepository;
use App\Repositories\PaisRepository;
use App\Repositories\UsuarioRepository;
use App\Validations\CiudadValidation;
use App\Validations\DireccionValidation;
use Core\Controller;
use Core\ServicesContainer;

class DireccionController extends Controller
{
    private $config;
    public function __construct()
    {
        parent::__construct();
        $this->config = ServicesContainer::getConfig();
    }

    /***
    AUTOR:  Martin Fierro Robles 04/11/2018
    Descripcion: Vista Principal de Direcciones
     ***/
    public function getindex() {
        return $this->render('mantenimiento/direcciones/index.twig',[
            'company_name' => $this->config['company_name'],
            'company_name_min' => $this->config['company_name_min'],
            'title' => 'Listado de Direcciones',
            'direcciones' => (new DireccionRepository())->Listar(),
            'usuarios' => (new UsuarioRepository())->Listar(),
            'paises' => (new PaisRepository())->Listar(),
            'estados' => (new EstadoRepository())->Listar(),
            'ciudades' => (new CiudadRepository())->Listar()
        ]);
    }

    /***
        AUTOR:  Martin Fierro Robles 10/11/2018
        Descripcion: Vista para agregar nueva direccion
    ***/
    public function getnueva() {
        return $this->render('mantenimiento/direcciones/create.twig',[
            'company_name' => $this->config['company_name'],
            'company_name_min' => $this->config['company_name_min'],
            'title' => 'Nueva Direccion',
            'usuarios' => (new UsuarioRepository())->Listar(),
            'paises' => (new PaisRepository())->Listar(),
            'estados' => (new EstadoRepository())->Listar(),
            'ciudades' => (new CiudadRepository())->Listar()
        ]);
    }

    /***
    AUTOR:  Martin Fierro Robles 10/11/2018
    Descripcion: Vista para agregar nueva direccion
     ***/
    public function getactualizar(int $id) {
        return $this->render('mantenimiento/direcciones/edit.twig',[
            'company_name' => $this->config['company_name'],
            'company_name_min' => $this->config['company_name_min'],
            'title' => 'Listado de Direcciones',
            'direccion' => (new DireccionRepository())->Obtener($id),
            'usuarios' => (new UsuarioRepository())->Listar(),
            'paises' => (new PaisRepository())->Listar(),
            'estados' => (new EstadoRepository())->Listar(),
            'ciudades' => (new CiudadRepository())->Listar()
        ]);
    }

    //region FUNCION PARA GUARDAR DIRECCIONES
    /***
    AUTOR:  Martin Fierro Robles 07/11/2018
    Descripcion: Funcion para el Guardar Nuevo cupon
     ***/
    public function postguardardireccion() {
        DireccionValidation::validate($_POST);
        $model = new Direccion();
        $model->calle  = $_POST['calle'];
        $model->numero = $_POST['numero'];
        $model->avenida = $_POST['avenida'];
        $model->colonia = $_POST['colonia'];
        $model->codigopostal = $_POST['codigopostal'];
        $model->ciudad_id = $_POST['ciudad_id'];
        $model->estado_id = $_POST['estado_id'];
        $model->pais_id = $_POST['pais_id'];
        $model->usuario_id = $_POST['usuario_id'];

        $rh = (new DireccionRepository())->Guardar($model);
        if ($rh->response) {
            $rh->href = 'mantenimiento/direcciones';
        }
        print_r(json_encode($rh));
    }
    //endregion

    //region FUNCIONES PARA ACTUALIZAR DIRECCIONES

    /***
    AUTOR:  Martin Fierro Robles 10/11/2018
    Descripcion: Funcion para actualizar ciudad
     ***/
    public function postactualizardireccion() {
        DireccionValidation::validate($_POST);

        $model = (new DireccionRepository())->Obtener($_POST['id']);

        if (isset($_POST['calle'])) $model->calle  = $_POST['calle'];
        if (isset($_POST['numero'])) $model->numero = $_POST['numero'];
        if (isset($_POST['avenida'])) $model->avenida = $_POST['avenida'];
        if (isset($_POST['colonia'])) $model->colonia = $_POST['colonia'];
        if (isset($_POST['codigopostal'])) $model->codigopostal = $_POST['codigopostal'];
        if (isset($_POST['ciudad_id'])) $model->ciudad_id = $_POST['ciudad_id'];
        if (isset($_POST['estado_id'])) $model->estado_id = $_POST['estado_id'];
        if (isset($_POST['pais_id'])) $model->pais_id = $_POST['pais_id'];
        if (isset($_POST['usuario_id'])) $model->usuario_id = $_POST['usuario_id'];

        $rh = (new DireccionRepository())->Guardar($model);
        if ($rh->response) {
            $rh->href = 'mantenimiento/direcciones';
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
        $model = (new DireccionRepository())->Obtener($_POST['id']);

        $rh = (new DireccionRepository())->Eliminar($model);

        print_r(json_encode($rh));
    }
    //endregion
}