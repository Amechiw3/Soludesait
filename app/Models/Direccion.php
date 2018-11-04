<?php
/**
 * Created by PhpStorm.
 * User: Martin Fierro
 * Date: 31/10/2018
 * Time: 06:43 PM
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Direccion extends Model {

    use SoftDeletes;

    protected $table = 'direcciones';

    public function ventas_ordenes() {
        return $this->hasMany('App\Models\Venta_Orden');
    }

    public function usuario() {
        return $this->hasOne('App\Models\Usuario');
    }

    public function ciudad() {
        return $this->hasOne('App\Models\Ciudad');
    }

    public function estado() {
        return $this->hasOne('App\Models\Estado');
    }

    public function pais() {
        return $this->hasOne('App\Models\Pais');
    }
}