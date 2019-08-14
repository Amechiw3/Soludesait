<?php
/**
 * Created by PhpStorm.
 * User: Martin Fierro
 * Date: 31/10/2018
 * Time: 06:37 PM
 */

namespace App\Models;


use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class Estado extends Model {

    //use SoftDeletes;

    protected $table = 'estados';

    public function direcciones() {
        return $this->belongsTo('App\Models\Direccion');
    }

    public function paises() {
        return $this->belongsTo('App\Models\Pais', 'pais_id', 'id');
    }

    public function ciudades() {
        return $this->hasMany('App\Models\Ciudad', 'estado_id', 'id');
    }
}