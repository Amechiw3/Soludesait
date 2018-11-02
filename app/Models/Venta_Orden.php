<?php
/**
 * Created by PhpStorm.
 * User: Martin Fierro
 * Date: 31/10/2018
 * Time: 06:47 PM
 */

namespace Models;


use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Venta_Orden extends Model {
    use SoftDeletes;
    protected $table = 'ventas_ordenes';

    public function ordenes_productos() {
        return $this->hasMany('App\Models\Orden_Producto');
    }

    public function usuario() {
        return $this->belongsTo('App\Models\Usuario');
    }

    public function cupon() {
        return $this->belongsTo('App\Models\Cupon');
    }

    public function direccion() {
        return $this->belongsTo('App\Models\Direccion');
    }
}