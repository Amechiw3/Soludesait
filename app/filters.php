<?php
/**
 * Created by PhpStorm.
 * User: Martin Fierro
 * Date: 19/10/2018
 * Time: 11:23 PM
 */

$router->filter('auth', function(){
    \App\Middlewares\AuthMiddleware::isLoggedIn();
});