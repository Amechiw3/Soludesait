<?php
/**
 * Created by PhpStorm.
 * User: Jose Corona
 * Date: 09/10/2018
 * Time: 07:31 AM
 */
/***
    Alumno:     Jose Corona Ayala
    Fecha:      09/10/2018 07:32 AM
    Maestro:    Noe Cazarez Camargo
    Materia:    Desarrollo de Aplicaciones WEB
    Descripcion:
    Clase que permitira relizar validaciones necesarias para el catalogo de Ventas Ordenes
***/
namespace App\Validations;
use App\Helpers\ResponseHelper;
use App\Models\Venta_Orden;
use App\Repositories\Venta_OrdenRepository;
use Respect\Validation\Validator as v;
class Venta_OrdenValidation
{
    public static function validate(array $model) {
        try {
            $v =  v::key('orden_fecha', v::stringType()->notEmpty())
                  ->key('total', v::stringType()->notEmpty());
            $v->assert($model);
        } catch (\Exception $e) {
            $rh = new ResponseHelper();
            $rh->setResponse(false, null);
            $rh->validations = $e->findMessages([
                'orden_fecha' => 'Campo requerido',  
                'total' => 'Campo requerido'                 
            ]);
            exit(json_encode($rh));
        }
    }

    //region FUNCIONES PARA GUARDAR DETALLES
    /***
    AUTOR:  Martin Fierro Robles 11/11/2018
    Descripcion: Funcion para el Guardar Nuevo mensaje
     ***/
    public function postguardar() {
        $model = new Venta_Orden();
        $model->usuario_id = $_POST['usuario_id'];
        $model->direccion_id = $_POST['direccion_id'];
        $model->orden_fecha = $_POST['orden_fecha'];
        $model->total = $_POST['total'];
        $model->cupon_id = $_POST['cupon_id'];
        $model->status_at = $_POST['status_at'];

        $rh = (new Venta_OrdenRepository())->Guardar($model);
        if ($rh->response) {
            $rh->href = 'mantenimiento/venta';
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
        Venta_OrdenValidation::validate($_POST);
        $model = (new Venta_OrdenRepository())->Obtener($_POST['id']);

        if (isset($_POST['usuario_id'])) $model->usuario_id = $_POST['usuario_id'];
        if (isset($_POST['direccion_id'])) $model->direccion_id = $_POST['direccion_id'];
        if (isset($_POST['orden_fecha'])) $model->orden_fecha = $_POST['orden_fecha'];
        if (isset($_POST['total'])) $model->total = $_POST['total'];
        if (isset($_POST['cupon_id'])) $model->cupon_id = $_POST['cupon_id'];
        if (isset($_POST['status_at'])) $model->status_at = $_POST['status_at'];

        $rh = (new Venta_OrdenRepository())->Guardar($model);
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
        $model = (new Venta_OrdenRepository())->Obtener($_POST['id']);

        $rh = (new Venta_OrdenRepository())->Eliminar($model);

        print_r(json_encode($rh));
    }
    //endregion
}