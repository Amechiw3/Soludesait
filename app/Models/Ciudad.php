<?php
/**
 * Created by PhpStorm.
 * User: Martin Fierro
 * Date: 31/10/2018
 * Time: 06:42 PM
 */

namespace App\Models;


use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Ciudad extends Model {

    //use SoftDeletes;

    protected $table = 'ciudades';

    public function direcciones() {
        return $this->hasMany('App\Models\Direccion');
    }

    public function estados() {
        return $this->belongsTo('App\Models\Estado', 'estado_id', 'id');
    }
}