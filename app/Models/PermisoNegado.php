<?php
/**
 * Created by PhpStorm.
 * User: Martin Fierro
 * Date: 18/09/2018
 * Time: 08:32 AM
 */

namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class PermisoNegado extends Model {

    protected $table = "permisos_negados";

    public function rol() {
        return $this->belongsTo('App\Models\Rol');
    }

    public function permiso() {
        return $this->belongsTo('App\Models\Permiso');
    }

}