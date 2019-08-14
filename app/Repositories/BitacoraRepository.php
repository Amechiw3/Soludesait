<?php
/**
 * Created by PhpStorm.
 * User: Martin Fierro
 * Date: 08/11/2018
 * Time: 07:01 AM
 */

namespace App\Repositories;


use App\Helpers\ResponseHelper;
use App\Models\Bitacora;
use Core\Log;

class BitacoraRepository
{
    private $bitacora;

    public function __construct()
    {
        $this->bitacora = new Bitacora();
    }

    /***
    AUTOR:  Martin Fierro Robles 08/11/2018
    Descripcion: Listado de Bitacoras
     ***/
    public function Listar() : Collection {
        $datos = [];
        try {
            $datos = $this->bitacora->orderBy('id')->get();
        } catch (\Exception $e) {
            Log::error(BitacoraRepository::class, $e->getMessage());
        }
        return $datos;
    }
    /***
    AUTOR:  Martin Fierro Robles 08/11/2018
    Descripcion: Funcion para Guardar/Actualizar registro de Bitacoras
     ***/
    public function Guardar(Bitacora $model) : ResponseHelper {
        $rh = new ResponseHelper();
        try {
            $this->categoria = $model;
            if (isset($model->id)) {
                $this->bitacora->exists = true;
            }
            $this->bitacora->save();
            $rh->setResponse(true, 'Registro guardado con exito');
        } catch (\Exception $e) {
            Log::error(BitacoraRepository::class, $e->getMessage());
        }
        return $rh;
    }
    /***
    AUTOR:  Martin Fierro Robles 08/11/2018
    Descripcion: Obtener un registro de Bitacoras mediante el ID
     ***/
    public function Obtener(int $id) : ?Bitacora {
        $bitacora = null;
        try {
            $bitacora = $this->bitacora->find($id);
        } catch (\Exception $e) {
            Log::error(BitacoraRepository::class, $e->getMessage());
        }
        return $bitacora;
    }
    /***
    AUTOR:  Martin Fierro Robles 08/11/2018
    Descripcion: Funcion para eliminar un registro de Bitacoras
     ***/
    public function Eliminar(Bitacora $model) : ResponseHelper {
        $rh = new ResponseHelper();
        try {
            $rh->setResponse($model->delete(), '');
        } catch (\Exception $e) {
            Log::error(BitacoraRepository::class, $e->getMessage());
        }
        return $rh;
    }
}