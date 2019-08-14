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
use App\Models\Galeria;
use App\Models\Historial;
use Core\Log;
use Illuminate\Database\Eloquent\Collection;
class HistorialRepository
{
    private $historial;
    public function __construct()
    {
        $this->historial = new Historial();
    }
    /***
        AUTOR:  Martin Fierro Robles 09/11/2018
        Descripcion: Listado de Historial
    ***/
    public function Listar() : Collection {
        $datos = [];
        try {
            $datos = $this->historial->orderBy('id')->get();
        } catch (\Exception $e) {
            Log::error(HistorialRepository::class, $e->getMessage());
        }
        return $datos;
    }
    /***
        AUTOR:  Martin Fierro Robles 09/11/2018
        Descripcion: Funcion para Guardar/Actualizar registro de Historial
    ***/
    public function Guardar(Historial $model) : ResponseHelper {
        $rh = new ResponseHelper();
        try {
            $this->historial = $model;
            if (isset($model->id)) {
                $this->historial->exists = true;
            }
            $this->historial->save();
            $rh->setResponse(true, 'Registro guardado con exito');
        } catch (\Exception $e) {
            Log::error(HistorialRepository::class, $e->getMessage());
        }
        return $rh;
    }
    /***
        AUTOR:  Martin Fierro Robles 09/11/2018
        Descripcion: Obtener un registro de Historial mediante el ID
    ***/
    public function Obtener(int $id) : ?Historial {
        $historial = null;
        try {
            $historial = $this->historial->find($id);
        } catch (\Exception $e) {
            Log::error(GaleriaRepository::class, $e->getMessage());
        }
        return $historial;
    }
    /***
        AUTOR:  Martin Fierro Robles 09/11/2018
        Descripcion: Funcion para eliminar un registro de Historial
    ***/
    public function Eliminar(Historial $model) : ResponseHelper {
        $rh = new ResponseHelper();
        try {
            $rh->setResponse($model->delete(), '');
        } catch (\Exception $e) {
            Log::error(HistorialRepository::class, $e->getMessage());
        }
        return $rh;
    }
}