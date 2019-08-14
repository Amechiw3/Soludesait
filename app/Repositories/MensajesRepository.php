<?php
/**
 * Created by PhpStorm.
 * User: Martin Fierro
 * Date: 08/11/2018
 * Time: 12:37 AM
 */
/***
    Alumno:     Martin Fierro Robles
    Fecha:      08/11/2018 12:37 AM
    Maestro:    Noe Cazares
    Materia:    Desarrollo de Aplicaciones WEB
    Descripcion:
    Codigo para manejo de los datos en la Tabla de Mensajes (C.R.U.D)
***/

namespace App\Repositories;


use App\Helpers\ResponseHelper;
use App\Models\Mensaje;
use Core\Log;
use Illuminate\Support\Collection;

class MensajesRepository
{
    private $mensajes;

    public function __construct()
    {
        $this->mensajes = new Mensaje();
    }

    /***
        AUTOR:  Martin Fierro Robles 08/11/2018
        Descripcion: Listado de mensajes
    ***/
    public function Listar() : Collection {
        $datos = [];
        try {
            $datos = $this->mensajes->orderBy('id')->get();
        } catch (\Exception $e) {
            Log::error(MensajesRepository::class, $e->getMessage());
        }
        return $datos;
    }
    /***
    AUTOR:  Martin Fierro Robles 08/11/2018
    Descripcion: Funcion para Guardar/Actualizar registro de Mensajes
     ***/
    public function Guardar(Mensaje $model) : ResponseHelper {
        $rh = new ResponseHelper();
        try {
            $this->mensajes = $model;
            if (isset($model->id)) {
                $this->mensajes->exists = true;
            }
            $this->mensajes->save();
            $rh->setResponse(true, 'Registro guardado con exito');
        } catch (\Exception $e) {
            Log::error(MensajesRepository::class, $e->getMessage());
        }
        return $rh;
    }
    /***
    AUTOR:  Martin Fierro Robles 08/11/2018
    Descripcion: Obtener un registro de Mensajes mediante el ID
     ***/
    public function Obtener(int $id) : ?Mensaje {
        $mensaje = null;
        try {
            $mensaje = $this->mensajes->find($id);
        } catch (\Exception $e) {
            Log::error(MensajesRepository::class, $e->getMessage());
        }
        return $mensaje;
    }
    /***
    AUTOR:  Martin Fierro Robles 08/11/2018
    Descripcion: Funcion para eliminar un registro de Mensajes
     ***/
    public function Eliminar(Mensaje $model) : ResponseHelper {
        $rh = new ResponseHelper();
        try {
            $rh->setResponse($model->delete(), '');
        } catch (\Exception $e) {
            Log::error(MensajesRepository::class, $e->getMessage());
        }
        return $rh;
    }
}