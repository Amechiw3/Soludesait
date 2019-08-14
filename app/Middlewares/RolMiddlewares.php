<?php
/*  by: NOE CAZAREZ CAMARGO
    año: 10/23/18,
    Materia: ,
    Maestro: ,
    Descripcion:
*/

namespace App\Middlewares;


use App\Repositories\PermisoNegadoRepository;
use App\Repositories\PermisosRepository;
use Core\Auth;

class RolMiddlewares
{
    public static function isRoot():bool {
        $resp=false;
        if(Auth::getCurrentUser()->rol_id==1000)
            $resp=true;
        return $resp;
    }
    public static function isAdmin():bool {
        $resp=false;
        if(Auth::getCurrentUser()->rol_id==1)
            $resp=true;
        return $resp;
    }
    public static function isMaestro():bool {
        $resp=false;
        if(Auth::getCurrentUser()->rol_id==2)
            $resp=true;
        return $resp;
    }
    public static function isAlumno():bool {
        $resp=false;
        if(Auth::getCurrentUser()->rol_id==3)
            $resp=true;
        return $resp;
    }

    public static function tienesPermiso($permisoId):bool {
        $resp=false;
        $dato=(new PermisoNegadoRepository())->obtenerPermisoNegadoByRol($permisoId, Auth::getCurrentUser()->rol_id);
        if(!is_object($dato)){
           $resp=true;
        }
        return $resp;
    }
}