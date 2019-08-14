<?php
/**
 * Created by PhpStorm.
 * User: Martin Fierro
 * Date: 08/11/2018
 * Time: 07:03 AM
 */

namespace App\Models;


use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Bitacora extends Model
{
    use SoftDeletes;
    protected $table = 'bitacoras';


}