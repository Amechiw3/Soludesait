<?php
/**
 * Created by PhpStorm.
 * User: Martin Fierro
 * Date: 31/10/2018
 * Time: 06:48 PM
 */

namespace Models;


use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Producto extends Model {
    use SoftDeletes;
    protected $table = 'productos';

    public function categoria() {
        return $this->belongsTo('App\Models\Categoria');
    }

    public function galerias() {
        return $this->hasMany('App\Models\Galeria');
    }

    public function ordenes() {
        return $this->hasMany('App\Models\Orden_Producto');
    }
}