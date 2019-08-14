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
use App\Models\Direccion;
use Core\Log;
use Illuminate\Database\Eloquent\Collection;
class DireccionRepository
{
    private $direccion;
    public function __construct()
    {
        $this->direccion = new Direccion();
    }
    /***
        AUTOR:  Jose Corona Ayala 10/10/2018
        Descripcion: Listado de Direcciones
    ***/
    public function Listar() : Collection {
        $datos = [];
        try {
            $datos = $this->direccion->orderBy('id')->get();
        } catch (\Exception $e) {
            Log::error(DireccionRepository::class, $e->getMessage());
        }
        return $datos;
    }
    /***
        AUTOR:  Jose Corona Ayala 10/10/2018
        Descripcion: Funcion para Guardar/Actualizar registro de Cupones
    ***/
    public function Guardar(Direccion $model) : ResponseHelper {
        $rh = new ResponseHelper();
        try {
            $this->direccion = $model;
            if (isset($model->id)) {
                $this->direccion->exists = true;
            }
            $this->direccion->save();
            $rh->setResponse(true, 'Registro guardado con exito');
        } catch (\Exception $e) {
            Log::error(DireccionRepository::class, $e->getMessage());
        }
        return $rh;
    }
    /***
        AUTOR:  Jose Corona Ayala 10/10/2018
        Descripcion: Obtener un registro de cupones mediante el ID
    ***/
    public function Obtener(int $id) : ?Direccion {
        $direccion = null;
        try {
            $direccion = $this->direccion->find($id);
        } catch (\Exception $e) {
            Log::error(DireccionRepository::class, $e->getMessage());
        }
        return $direccion;
    }
    /***
        AUTOR:  Jose Corona Ayala 10/10/2018
        Descripcion: Funcion para eliminar un registro de cupones
    ***/
    public function Eliminar(Direccion $model) : ResponseHelper {
        $rh = new ResponseHelper();
        try {
            $rh->setResponse($model->delete(), '');
        } catch (\Exception $e) {
            Log::error(DireccionRepository::class, $e->getMessage());
        }
        return $rh;
    }
}