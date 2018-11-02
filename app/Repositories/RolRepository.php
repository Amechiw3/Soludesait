<?php
/**
 * Created by PhpStorm.
 * User: Martin Fierro
 * Date: 18/09/2018
 * Time: 08:50 AM
 */

namespace App\Repositories;


use App\Helpers\ResponseHelper;
use App\Models\Rol;
use Core\Log;
use Illuminate\Database\Eloquent\Collection;

class RolRepository {

    private $rol;

    public function __construct() {
        $this->rol = new Rol();
    }

    public function Listar() : Collection{
        $datos = [];

        try {
            $datos = $this->rol->orderBy('nombre')->get();
        } catch (\Exception $e) {
          Log::error(RolRepository::class, $e->getMessage());
        }

        return $datos;
    }

    public function Obtener(int $id) : ?Rol {
        $model = null;

        try {
            $model = $this->rol->find($id);
        } catch (\Exception $e) {
            Log::error(RolRepository::class, $e->getMessage());
        }
        return $model;
    }

    /***
    AUTOR:  Martin Fierro Robles 10/10/2018
    Descripcion: Funcion para Guardar/Actualizar registro de Roles
     ***/
    public function Guardar(Rol $model) : ResponseHelper {
        $rh = new ResponseHelper();
        try {
            $this->rol = $model;
            if (isset($model->id)) {
                $this->rol->exists = true;
            }

            $this->rol->save();
            $rh->setResponse(true, 'Registro guardado con exito');

        } catch (\Exception $e) {
            Log::error(RolRepository::class, $e->getMessage());
        }
        return $rh;
    }

    /***
    AUTOR:  Martin Fierro Robles 10/10/2018
    Descripcion: Funcion para eliminar un registro de permisos
     ***/
    public function Eliminar(Rol $model) : ResponseHelper {
        $rh = new ResponseHelper();
        try {
            $rh->setResponse($model->delete(), '');
        } catch (\Exception $e) {
            Log::error(RolRepository::class, $e->getMessage());
        }
        return $rh;
    }
}