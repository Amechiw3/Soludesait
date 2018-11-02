<?php
/**
 * Created by PhpStorm.
 * User: Martin Fierro
 * Date: 31/10/2018
 * Time: 07:06 PM
 */

namespace Models;


use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Orden_Producto extends Model {
    use SoftDeletes;
    protected $table = 'ordenes_productos';

    public function producto() {
        return $this->belongsTo('App\Models\Producto');
    }

    public function ventas() {
        return $this->belongsTo('App\Models\Usuario');
    }
}