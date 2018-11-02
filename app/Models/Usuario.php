<?php
/**
 * Created by PhpStorm.
 * User: Martin Fierro
 * Date: 18/09/2018
 * Time: 08:32 AM
 */

namespace App\Models;


use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Usuario extends Model {

    use SoftDeletes;

    protected $table = "usuarios";

    protected $hidden = ['password'];

    public function rol() {
        return $this->belongsTo('App\Models\Rol');
    }

    public function historial() {
        return $this->hasMany('App\Models\Historial');
    }
}