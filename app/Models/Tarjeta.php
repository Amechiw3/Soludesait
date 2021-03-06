<?php
/**
 * Created by PhpStorm.
 * User: Martin Fierro
 * Date: 31/10/2018
 * Time: 06:45 PM
 */

namespace App\Models;


use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Tarjeta extends Model {
    use SoftDeletes;
    protected $table = 'tarjetas';

    public function usuario() {
        return $this->belongsTo('App\Models\Usuario');
    }
}