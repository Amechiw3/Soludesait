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

class ProductoValidation
{
    public static function validate(array $model) {
        try {
            $v = v::key('nombre', v::stringType()->notEmpty())
                    ->key('descripcion', v::stringType()->notEmpty())
                    ->key('regular_precio', v::stringType()->notEmpty());
                   
                               
            $v->assert($model);
        } catch (\Exception $e) {
            $rh = new ResponseHelper();
            $rh->setResponse(false, null);
            $rh->validations = $e->findMessages([
                'nombre' => 'Campo requerido',  
                'descripcion' => 'Campo requerido',
                'regular_precio' => 'Campo requerido',
                'descuento_precio' => 'Campo requerido'

            ]);
            exit(json_encode($rh));
        }
    }
}