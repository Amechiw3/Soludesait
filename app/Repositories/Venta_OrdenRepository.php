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
use App\Models\Venta;
use App\Models\Venta_Orden;
use Core\Log;
use Illuminate\Database\Eloquent\Collection;
class Venta_OrdenRepository
{
    private $venta;
    public function __construct()
    {
        $this->venta = new Venta_Orden();
    }
    /***
        AUTOR:  Corona Ayala Jose 
        Descripcion: Listado de Ventas
    ***/
    public function Listar() : Collection {
        $datos = [];
        try {
            $datos = $this->venta->orderBy('orden_fecha')->get();
        } catch (\Exception $e) {
            Log::error(Venta_OrdenRepository::class, $e->getMessage());
        }
        return $datos;
    }

    /***
        AUTOR:  Martin Fierro Robles 10/10/2018
        Descripcion: Funcion para Guardar/Actualizar registro de permisos
    ***/
    public function Guardar(Venta_Orden $model) : ResponseHelper {
        $rh = new ResponseHelper();
        try {
            $this->venta = $model;
            if (isset($model->id)) {
                $this->venta->exists = true;
            }
            $this->venta->save();
            $rh->setResponse(true, 'Registro guardado con exito');
        } catch (\Exception $e) {
            Log::error(Venta_OrdenRepository::class, $e->getMessage());
        }
        return $rh;
    }

    /***
        AUTOR:  Martin Fierro Robles 10/10/2018
        Descripcion: Obtener un registro de pemisos mediante el ID
    ***/
    public function Obtener(int $id) : ?Venta_Orden {
        $venta = null;
        try {
            $venta = $this->venta->find($id);
        } catch (\Exception $e) {
            Log::error(Venta_OrdenRepository::class, $e->getMessage());
        }
        return $venta;
    }

    /***
        AUTOR:  Martin Fierro Robles 10/10/2018
        Descripcion: Funcion para eliminar un registro de permisos
    ***/
    public function Eliminar(Venta_Orden $model) : ResponseHelper {
        $rh = new ResponseHelper();
        try {
            $rh->setResponse($model->delete(), '');
        } catch (\Exception $e) {
            Log::error(Venta_OrdenRepository::class, $e->getMessage());
        }
        return $rh;
    }
}