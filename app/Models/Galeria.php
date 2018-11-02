<?php
/**
 * Created by PhpStorm.
 * User: Martin Fierro
 * Date: 31/10/2018
 * Time: 06:49 PM
 */

namespace Models;


use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Galeria extends Model {
    use SoftDeletes;
    protected $table = 'galerias';

    public function producto() {
        return $this->belongsTo('App\Models\Producto');
    }
}