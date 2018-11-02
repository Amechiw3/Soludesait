<?php
/**
 * Created by PhpStorm.
 * User: Martin Fierro
 * Date: 10/10/2018
 * Time: 05:29 PM
 */
/***
    Alumno:     Martin Fierro Robles
    Fecha:      10/10/2018 05:30 PM
    Maestro:    Noe Cazarez Camargo
    Materia:    Desarrollo de Aplicaciones WEB
    Descripcion:
    Codigo para manejo de los datos en la Tabla de Permisos (C.R.U.D)
***/
namespace App\Repositories;


use App\Helpers\ResponseHelper;
use App\Models\Permiso;
use Core\Log;
use Illuminate\Database\Eloquent\Collection;

class PermisosRepository
{
    private $permiso;

    public function __construct()
    {
        $this->permiso = new Permiso();
    }

    /***
        AUTOR:  Martin Fierro Robles 10/10/2018
        Descripcion: Listado de Permisos
    ***/
    public function Listar() : Collection {
        $datos = [];
        try {
            $datos = $this->permiso->orderBy('nombre')->get();
        } catch (\Exception $e) {
            Log::error(PermisosRepository::class, $e->getMessage());
        }
        return $datos;
    }

    /***
        AUTOR:  Martin Fierro Robles 10/10/2018
        Descripcion: Funcion para Guardar/Actualizar registro de permisos
    ***/
    public function Guardar(Permiso $model) : ResponseHelper {
        $rh = new ResponseHelper();
        try {
            $this->permiso = $model;
            if (isset($model->id)) {
                $this->permiso->exists = true;
            }

            $this->permiso->save();
            $rh->setResponse(true, 'Registro guardado con exito');

        } catch (\Exception $e) {
            Log::error(PermisosRepository::class, $e->getMessage());
        }
        return $rh;
    }

    /***
        AUTOR:  Martin Fierro Robles 10/10/2018
        Descripcion: Obtener un registro de pemisos mediante el ID
    ***/
    public function Obtener(int $id) : ?Permiso {
        $permiso = null;
        try {
            $permiso = $this->permiso->find($id);
        } catch (\Exception $e) {
            Log::error(PermisosRepository::class, $e->getMessage());
        }
        return $permiso;
    }

    /***
        AUTOR:  Martin Fierro Robles 10/10/2018
        Descripcion: Funcion para eliminar un registro de permisos
    ***/
    public function Eliminar(Permiso $model) : ResponseHelper {
        $rh = new ResponseHelper();
        try {
            $rh->setResponse($model->delete(), '');
        } catch (\Exception $e) {
            Log::error(PermisosRepository::class, $e->getMessage());
        }
        return $rh;
    }

}