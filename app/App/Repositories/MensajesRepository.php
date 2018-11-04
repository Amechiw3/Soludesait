<?php
/**
 * Created by PhpStorm.
 * User: Martin Fierro
 * Date: 03/11/2018
 * Time: 04:19 PM
 */

namespace App\Repositories;


use App\Models\Mensaje;

class MensajesRepository {

    private $mensaje;

    public function __construct()
    {
        $this->mensaje = new Mensaje();
    }

    /***
        AUTOR:  Martin Fierro Robles 03/11/2018
        Descripcion: Funcion para
    ***/
    public function listar() : Collection {
        $datos = [];

        try {
            $datos = $this->usuario->orderBy('nombre')->get();
        } catch (\Exception $e) {
            Log::error(UsuarioRepository::class, $e->getMessage());
        }

        return $datos;
    }

    /***
    AUTOR:  Martin Fierro Robles 26/09/2018
    Descripcion: Funcion para Guardar/Actualizar registro de usuario
     **/
    public function guardar(Usuario $model) : ResponseHelper {
        $rh = new ResponseHelper();

        try {
            $this->usuario = $model;

            if (isset($model->id)) {
                $this->usuario->exists = true;

                if (!empty($model->password)){
                    $this->usuario->password = sha1($model->password);
                } else {
                    $this->usuario->password = (Usuario::find($model->id))->password;
                }

            } else {
                $this->usuario->password = sha1($model->password);
            }

            $this->usuario->save();
            $rh->setResponse(true, 'Registro guardado con exito');
        } catch (\Exception $e) {
            Log::error(UsuarioRepository::class, $e->getMessage());
        }

        return $rh;
    }

    /***
    AUTOR:  Martin Fierro Robles 26/09/2018
    Descripcion: Busqueda de Usuarios
     **/
    public function obtener($id) : ?Usuario {
        $usuario = null;

        try {
            $usuario = $this->usuario->find($id);
        } catch (Exception $e) {
            Log::error(UsuarioRepository::class, $e->getMessage());
        }

        return $usuario;
    }

    /***
    AUTOR:  Martin Fierro Robles 02/10/2018
    Descripcion: Busqueda de Email
     ***/
    public function buscarByEmail($email) : ResponseHelper {
        $rh = new ResponseHelper();

        try {
            $tmp = $this->usuario->where('correo', $email)->first();
            if (is_object($tmp)) {
                $rh->setResponse(true);
                $rh->result = $tmp;
            } else {
                $rh->setResponse(false, 'No existen registros que cumpla con la condicion ingresada');
            }

        } catch (Exception $e) {
            Log::error(UsuarioRepository::class, $e->getMessage());
        }

        return $rh;
    }

    /***
    AUTOR:  Martin Fierro Robles 02/10/2018
    Descripcion: Eliminar Usuarios
     ***/
    public function eliminar(Usuario $model) : ResponseHelper {
        $rh = new ResponseHelper();

        try {
            if ($model->delete()) {
                $rh->setResponse(true, "Registro Eliminado con Exito");
            } else {
                $rh->setResponse(false, 'El Registro no se pudo eliminar');
            }
        } catch (Exception $e) {
            Log::error(UsuarioRepository::class, $e->getMessage());
        }

        return $rh;
    }


}