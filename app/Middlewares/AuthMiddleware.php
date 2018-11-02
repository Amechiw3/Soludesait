<?php
/**
 * Created by PhpStorm.
 * User: Martin Fierro
 * Date: 19/10/2018
 * Time: 11:20 PM
 */

namespace App\Middlewares;


use App\Helpers\UrlHelper;
use Core\Auth;

class AuthMiddleware
{
    public static function isLoggedIn() {
        if (!Auth::isLoggedIn()) {
            UrlHelper::redirect('auth');
        }
    }

}