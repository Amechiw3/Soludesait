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

    use SoftDeletes;

    protected $table = 'estados';

    public function direcciones() {
        return $this->belongsTo('App\Models\Direccion');
    }

    public function pais() {
        return $this->belongsTo('App\Models\Pais');
    }

    public function ciudades() {
        return $this->hasMany('App\Models\Ciudad');
    }
}