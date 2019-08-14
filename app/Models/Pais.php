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

class Pais extends Model {

    //use SoftDeletes;

    protected $table = "paises";

    public function direcciones() {
        return $this->belongsTo('App\Models\Direccion');
    }

    public function estados() {
        return $this->hasMany('App\Models\Estado', 'pais_id', 'id');
    }
}