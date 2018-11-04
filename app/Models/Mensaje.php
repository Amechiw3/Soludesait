<?php
/**
 * Created by PhpStorm.
 * User: Martin Fierro
 * Date: 03/11/2018
 * Time: 04:06 PM
 */

namespace App\Models;


use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Mensaje extends Model {
    use SoftDeletes;

    protected $table = 'mensajes';

}