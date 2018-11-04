<?php
/**
 * Created by PhpStorm.
 * User: Martin Fierro
 * Date: 26/09/2018
 * Time: 07:39 AM
 */
/***
    Alumno:     Martin Fierro Robles
    Fecha:      26/09/2018 07:39 AM
    Maestro:    Noe Cazarez
    Materia:    Desarrollo de Aplicaciones WEB
    Descripcion:
    Codigo para manejo de los datos en la table de Usuarios (C.R.U.D)
***/
namespace App\Repositories;


use App\Helpers\GridHelper;
use App\Helpers\ResponseHelper;
use App\Models\Usuario;
use Core\Auth;
use Core\Log;
use Illuminate\Database\Eloquent\Collection;

class UsuarioRepository
{
    private $usuario;

    public function __construct()
    {
        $this->usuario = new Usuario();
    }

    public function listargrid() {
        $datos = [];
        $grid = new GridHelper();

        try {
            $datos = $this->usuario
                ->orderBy(
                    $grid->columna,
                    $grid->columna_orden)
                ->skip($grid->pagina)
                ->take($grid->limite)
                ->get();
        } catch (\Exception $e) {
            Log::error(UsuarioRepository::class, $e->getMessage());
        }

        return $grid->responde(
            $datos,
            $this->usuario->count()
        );

        //return $datos;
    }

    /***
    AUTOR:  Martin Fierro Robles 26/09/2018
    Descripcion: Listado de Usuarios
     **/
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

    /***
        AUTOR:  Martin Fierro Robles 17/10/2018
        Descripcion: Autentificacion de Usuarios
    ***/
    public function autentificacion (string $correo, string $password) : ResponseHelper {
        $rh = new ResponseHelper();

        try {
            $tmp = $this->usuario
                    ->where('correo', strtolower($correo))
                    ->where('password', sha1($password))
                    ->first();
            if (is_object($tmp)) {

                Auth::signIn([
                    'id'         => $tmp->id,
                    'nombre'    => $tmp->nombre,
                    'apaterno'  => $tmp->apaterno,
                    'amaterno'  => $tmp->amaterno,
                    'rol_id'    => $tmp->rol_id,
                    'rol'       => $tmp->roles,
                    'avatar'    => $tmp->avatar,
                    'correo'    => $tmp->correo
                ]);
                $rh->setResponse(true);
            } else {
                $rh->setResponse(false, 'Credenciales de autenficacion no validas');
                Log::critical(UsuarioRepository::class, "INTENTO FALLIDO DE AUTENTIFICACION DE ". $correo);
            }

        } catch (Exception $e) {
            Log::error(UsuarioRepository::class, $e->getMessage());
        }

        return $rh;
    }
}