<?php
/**
 * Created by PhpStorm.
 * User: Martin Fierro
 * Date: 18/09/2018
 * Time: 08:33 AM
 */

namespace App\Models;


use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Permiso extends Model {

    use SoftDeletes;

    protected $table = "permisos";

    public function negados() {
        return $this->hasMany('App\Models\PermisoNegado');
    }

}