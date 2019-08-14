<?php
/**
 * Created by PhpStorm.
 * User: Martin Fierro
 * Date: 09/10/2018
 * Time: 07:31 AM
 */
/***
    Alumno:     Martin Fierro Robles
    Fecha:      09/10/2018 07:32 AM
    Maestro:    Noe Cazarez Camargo
    Materia:    Desarrollo de Aplicaciones WEB
    Descripcion:
    Clase que permitira relizar validaciones necesarias para el catalogo de Usuarios
***/
namespace App\Validations;

use App\Helpers\ResponseHelper;
use Respect\Validation\Validator as v;


class MensajeValidation
{
    public static function validate(array $model) {
        try {
            $v = v::key('nombre', v::stringType()->notEmpty())
                  ->key('correo', v::stringType()->notEmpty())
                  ->key('mensaje', v::stringType()->notEmpty());

            $v->assert($model);
        } catch (\Exception $e) {
            $rh = new ResponseHelper();
            $rh->setResponse(false, null);
            $rh->validations = $e->findMessages([
                'nombre' => 'Campo requerido',
                'correo' => 'Campo requerido',
                'mensaje' => 'Campo requerido',
            ]);

            exit(json_encode($rh));
        }
    }
}