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
use Core\Log;
use Illuminate\Database\Eloquent\Collection;
class ProductoRepository
{
    private $producto;
    public function __construct()
    {
        $this->producto = new Producto();
    }
    /***
        AUTOR:  Jose Corona Ayala 10/10/2018
        Descripcion: Listado de Cupones
    ***/
    public function Listar() : Collection {
        $datos = [];
        try {
            $datos = $this->producto->orderBy('id')->get();
        } catch (\Exception $e) {
            Log::error(ProductoRepository::class, $e->getMessage());
        }
        return $datos;
    }
    /***
        AUTOR:  Jose Corona Ayala 10/10/2018
        Descripcion: Funcion para Guardar/Actualizar registro de Cupones
    ***/
    public function Guardar(Producto $model) : ResponseHelper {
        $rh = new ResponseHelper();
        try {
            $this->producto = $model;
            if (isset($model->id)) {
                $this->producto->exists = true;
            }
            $this->producto->save();
            $rh->setResponse(true, 'Registro guardado con exito');
        } catch (\Exception $e) {
            Log::error(ProductoRepository::class, $e->getMessage());
        }
        return $rh;
    }
    /***
        AUTOR:  Jose Corona Ayala 10/10/2018
        Descripcion: Obtener un registro de cupones mediante el ID
    ***/
    public function Obtener(int $id) : ?Producto {
        $producto = null;
        try {
            $producto = $this->producto->find($id);
        } catch (\Exception $e) {
            Log::error(ProductoRepository::class, $e->getMessage());
        }
        return $producto;
    }
    /***
        AUTOR:  Jose Corona Ayala 10/10/2018
        Descripcion: Funcion para eliminar un registro de cupones
    ***/
    public function Eliminar(Producto $model) : ResponseHelper {
        $rh = new ResponseHelper();
        try {
            $rh->setResponse($model->delete(), '');
        } catch (\Exception $e) {
            Log::error(ProductoRepository::class, $e->getMessage());
        }
        return $rh;
    }
}