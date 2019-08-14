<?php
/**
 * Created by PhpStorm.
 * User: Martin Fierro
 * Date: 08/11/2018
 * Time: 07:25 AM
 */

namespace App\Repositories;


use App\Helpers\ResponseHelper;
use App\Models\PermisoNegado;
use Core\Log;
use Illuminate\Support\Collection;

class PermisoNegadoRepository
{
    private $permiso_negado;

    public function __construct()
    {
        $this->permiso_negado = new PermisoNegado();
    }

    /***
    AUTOR:  Martin Fierro Robles 08/11/2018
    Descripcion: Listado de Bitacoras
     ***/
    public function Listar() : Collection {
        $datos = [];
        try {
            $datos = $this->permiso_negado->orderBy('id')->get();
        } catch (\Exception $e) {
            Log::error(Permiso_NegadoRepository::class, $e->getMessage());
        }
        return $datos;
    }
    /***
    AUTOR:  Martin Fierro Robles 08/11/2018
    Descripcion: Funcion para Guardar/Actualizar registro de Bitacoras
     ***/
    public function Guardar(PermisoNegado $model) : ResponseHelper {
        $rh = new ResponseHelper();
        try {
            $this->permiso_negado = $model;
            if (isset($model->id)) {
                $this->permiso_negado->exists = true;
            }
            $this->permiso_negado->save();
            $rh->setResponse(true, 'Registro guardado con exito');
        } catch (\Exception $e) {
            Log::error(Permiso_NegadoRepository::class, $e->getMessage());
        }
        return $rh;
    }
    /***
    AUTOR:  Martin Fierro Robles 08/11/2018
    Descripcion: Obtener un registro de Bitacoras mediante el ID
     ***/
    public function Obtener(int $id) : ?PermisoNegado {
        $bitacora = null;
        try {
            $bitacora = $this->permiso_negado->find($id);
        } catch (\Exception $e) {
            Log::error(Permiso_NegadoRepository::class, $e->getMessage());
        }
        return $bitacora;
    }
    /***
    AUTOR:  Martin Fierro Robles 08/11/2018
    Descripcion: Funcion para eliminar un registro de Bitacoras
     ***/
    public function Eliminar(PermisoNegado $model) : ResponseHelper {
        $rh = new ResponseHelper();
        try {
            $rh->setResponse($model->delete(), '');
        } catch (\Exception $e) {
            Log::error(Permiso_NegadoRepository::class, $e->getMessage());
        }
        return $rh;
    }

    #region PERMISOS NEGADOS
    public function obtenerPermisoNegadoByRol($permisoId,$rolId):?PermisoNegado{
        $pNegado=null;
        try{
            $pNegado=$this->permiso_negado
                ->where('permiso_id',$permisoId)
                ->where('rol_id',$rolId)
                ->first();
        }catch (\Exception $e){
            Log::error(PermisoNegado::class,
                $e->getMessage());
        }
        return $pNegado;
    }
    #endregion
}