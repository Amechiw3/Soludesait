<?php
/**
 * Created by PhpStorm.
 * User: Martin Fierro
 * Date: 31/10/2018
 * Time: 06:51 PM
 */

namespace Models;


use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Etiqueta extends Model {
    use SoftDeletes;
    protected $table = 'etiquetas';

    public function producto_etiqueta() {
        return $this->hasMany('App\Models\Producto_Etiqueta');
    }
}