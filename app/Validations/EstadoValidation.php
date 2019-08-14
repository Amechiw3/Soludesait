<?php
/**
 * Created by PhpStorm.
 * User: Jose Corona
 * Date: 09/10/2018
 * Time: 07:31 AM
 */
/***
    Alumno:     Jose Corona Ayala
    Fecha:      09/10/2018 07:32 AM
    Maestro:    Noe Cazarez Camargo
    Materia:    Desarrollo de Aplicaciones WEB
    Descripcion:
    Clase que permitira relizar validaciones necesarias para el catalogo de Ventas Ordenes
***/
namespace App\Validations;
use App\Helpers\ResponseHelper;
use Respect\Validation\Validator as v;
class EstadoValidation
{
    public static function validate(array $model) {
        try {
            $v =  v::key('estado', v::stringType()->notEmpty());
                            
            $v->assert($model);
        } catch (\Exception $e) {
            $rh = new ResponseHelper();
            $rh->setResponse(false, null);
            $rh->validations = $e->findMessages([
                'estado' => 'Campo requerido'
                            
            ]);
            exit(json_encode($rh));
        }
    }
}