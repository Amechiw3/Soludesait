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
use App\Models\Cupon;
use Core\Log;
use Illuminate\Database\Eloquent\Collection;


class CuponRepository
{
    private $cupon;
    public function __construct()
    {
        $this->cupon = new Cupon();
    }
    /***
        AUTOR:  Jose Corona Ayala 10/10/2018
        Descripcion: Listado de Cupones
    ***/
    public function Listar() : Collection {
        $datos = [];
        try {
            $datos = $this->cupon->orderBy('inicio_fecha')->get();
        } catch (\Exception $e) {
            Log::error(CuponRepository::class, $e->getMessage());
        }
        return $datos;
    }
    /***
        AUTOR:  Jose Corona Ayala 10/10/2018
        Descripcion: Funcion para Guardar/Actualizar registro de Cupones
    ***/
    public function Guardar(Cupon $model) : ResponseHelper {
        $rh = new ResponseHelper();
        try {
            $this->cupon = $model;
            if (isset($model->id)) {
                $this->cupon->exists = true;
            }
            $this->cupon->save();
            $rh->setResponse(true, 'Registro guardado con exito');
        } catch (\Exception $e) {
            Log::error(CuponRepository::class, $e->getMessage());
        }
        return $rh;
    }
    /***
        AUTOR:  Jose Corona Ayala 10/10/2018
        Descripcion: Obtener un registro de cupones mediante el ID
    ***/
    public function Obtener(int $id) : ?Cupon {
        $cupon = null;
        try {
            $cupon = $this->cupon->find($id);
        } catch (\Exception $e) {
            Log::error(CuponRepository::class, $e->getMessage());
        }
        return $cupon;
    }

    /***
    AUTOR:  Jose Corona Ayala 10/10/2018
    Descripcion: Obtener un registro de cupones mediante el ID
     ***/
    public function Searchx($text) {
        $cuponx = null;
        try {
            $cuponx = $this->cupon->where('codigo', $text);
        } catch (\Exception $e) {
            Log::error(CuponRepository::class, $e->getMessage());
        }
        return $cuponx;
    }

    /***
        AUTOR:  Jose Corona Ayala 10/10/2018
        Descripcion: Funcion para eliminar un registro de cupones
    ***/
    public function Eliminar(Cupon $model) : ResponseHelper {
        $rh = new ResponseHelper();
        try {
            $rh->setResponse($model->delete(), '');
        } catch (\Exception $e) {
            Log::error(CuponRepository::class, $e->getMessage());
        }
        return $rh;
    }
}