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
class CuponValidation
{
    public static function validate(array $model) {
        try {
            $v = v::key('codigo', v::stringType()->notEmpty())
                  ->key('descuento', v::stringType()->notEmpty())
                  ->key('descripcion', v::stringType()->notEmpty())
                  ->key('inicio_fecha', v::stringType()->notEmpty())
                  ->key('fin_fecha', v::stringType()->notEmpty());
                      
            $v->assert($model);
        } catch (\Exception $e) {
            $rh = new ResponseHelper();
            $rh->setResponse(false, null);
            $rh->validations = $e->findMessages([
                'codigo' => 'Codigo requerido',
                'descuento' => 'Descuento requerido',
                'descripcion' => 'Descripcion requerida',
                'inicio_fecha' => 'Fecha de inicio requerida',
                'fin_fecha' => 'Fecha de Finalizacion requerida'
            ]);
            exit(json_encode($rh));
        }
    }
}