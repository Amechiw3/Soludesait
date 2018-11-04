<?php
/**
 * Created by PhpStorm.
 * User: Martin Fierro
 * Date: 31/10/2018
 * Time: 06:51 PM
 */

namespace App\Models;


use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Producto_Etiqueta extends Model {
    use SoftDeletes;
    protected $table = 'productos_etiquetas';

    public function producto() {
        return $this->belongsTo('App\Models\Producto');
    }

    public function usuarios() {
        return $this->belongsTo('App\Models\Etiquetas');
    }
}