<?php
/**
 * Created by PhpStorm.
 * User: Martin Fierro
 * Date: 31/10/2018
 * Time: 06:49 PM
 */

namespace App\Models;


use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Categoria extends Model {
    use SoftDeletes;
    protected $table = 'categorias';

    public function productos() {
        return $this->hasMany('App\Models\Producto');
    }
}