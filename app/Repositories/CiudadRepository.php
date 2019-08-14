<?php
/**
 * Created by PhpStorm.
 * User: Jose Corona Ayala
 * Date: 10/10/2018
 * Time: 05:29 PM
 */
/***
    Alumno:     Jose Corona Ayala
    Fecha:      10/10/2018 05:30 PM
    Maestro:    Noe Cazarez Camargo
    Materia:    Desarrollo de Aplicaciones WEB
    Descripcion:
    Codigo para manejo de los datos en la Tabla de cupones (C.R.U.D)
***/
namespace App\Repositories;
use App\Helpers\ResponseHelper;
use App\Models\Ciudad;
use Core\Log;
use Illuminate\Database\Eloquent\Collection;
class CiudadRepository
{
    private $ciudad;
    public function __construct()
    {
        $this->ciudad = new Ciudad();
    }
    /***
        AUTOR:  Jose Corona Ayala 10/10/2018
        Descripcion: Listado de Ciudades
    ***/
    public function Listar() : Collection {
        $datos = [];
        try {
            $datos = $this->ciudad->orderBy('id')->get();
        } catch (\Exception $e) {
            Log::error(CiudadRepository::class, $e->getMessage());
        }
        return $datos;
    }
    /***
        AUTOR:  Jose Corona Ayala 10/10/2018
        Descripcion: Funcion para Guardar/Actualizar registro de Cupones
    ***/
    public function Guardar(Ciudad $model) : ResponseHelper {
        $rh = new ResponseHelper();
        try {
            $this->ciudad = $model;
            if (isset($model->id)) {
                $this->ciudad->exists = true;
            }
            $this->ciudad->save();
            $rh->setResponse(true, 'Registro guardado con exito');
        } catch (\Exception $e) {
            Log::error(CiudadRepository::class, $e->getMessage());
        }
        return $rh;
    }
    /***
        AUTOR:  Jose Corona Ayala 10/10/2018
        Descripcion: Obtener un registro de cupones mediante el ID
    ***/
    public function Obtener(int $id) : ?Ciudad {
        $ciudad = null;
        try {
            $ciudad = $this->ciudad->find($id);
        } catch (\Exception $e) {
            Log::error(CiudadRepository::class, $e->getMessage());
        }
        return $ciudad;
    }
    /***
        AUTOR:  Jose Corona Ayala 10/10/2018
        Descripcion: Funcion para eliminar un registro de cupones
    ***/
    public function Eliminar(Ciudad $model) : ResponseHelper {
        $rh = new ResponseHelper();
        try {
            $rh->setResponse($model->delete(), '');
        } catch (\Exception $e) {
            Log::error(CiudadRepository::class, $e->getMessage());
        }
        return $rh;
    }
}