<?php
/**
 * Created by PhpStorm.
 * User: Martin Fierro
 * Date: 18/09/2018
 * Time: 08:24 AM
 */

namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class Rol extends Model {

    protected $table = "roles";

    public function usuarios() {
        return $this->hasMany('App\Models\Usuario');
    }

    public function permisos_negados() {
        return $this->hasMany('App\Models\PermisosNegado');
    }
}