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
use App\Models\Producto;
use App\Models\Tarjeta;
use Core\Log;
use Illuminate\Database\Eloquent\Collection;
class TarjetaRepository
{
    private $tarjeta;
    public function __construct()
    {
        $this->tarjeta = new Tarjeta();
    }
    /***
        AUTOR:  Jose Corona Ayala 10/10/2018
        Descripcion: Listado de Cupones
    ***/
    public function Listar() : Collection {
        $datos = [];
        try {
            $datos = $this->tarjeta->orderBy('id')->get();
        } catch (\Exception $e) {
            Log::error(TarjetaRepository::class, $e->getMessage());
        }
        return $datos;
    }
    /***
        AUTOR:  Jose Corona Ayala 10/10/2018
        Descripcion: Funcion para Guardar/Actualizar registro de Cupones
    ***/
    public function Guardar(Tarjeta $model) : ResponseHelper {
        $rh = new ResponseHelper();
        try {
            $this->tarjeta = $model;
            if (isset($model->id)) {
                $this->tarjeta->exists = true;
            }
            $this->tarjeta->save();
            $rh->setResponse(true, 'Registro guardado con exito');
        } catch (\Exception $e) {
            Log::error(TarjetaRepository::class, $e->getMessage());
        }
        return $rh;
    }
    /***
        AUTOR:  Jose Corona Ayala 10/10/2018
        Descripcion: Obtener un registro de cupones mediante el ID
    ***/
    public function Obtener(int $id) : ?Tarjeta {
        $tarjeta = null;
        try {
            $tarjeta = $this->tarjeta->find($id);
        } catch (\Exception $e) {
            Log::error(TarjetaRepository::class, $e->getMessage());
        }
        return $tarjeta;
    }
    /***
        AUTOR:  Jose Corona Ayala 10/10/2018
        Descripcion: Funcion para eliminar un registro de cupones
    ***/
    public function Eliminar(Tarjeta $model) : ResponseHelper {
        $rh = new ResponseHelper();
        try {
            $rh->setResponse($model->delete(), '');
        } catch (\Exception $e) {
            Log::error(ProductoRepository::class, $e->getMessage());
        }
        return $rh;
    }
}