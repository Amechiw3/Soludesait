<?php
/**
 * Created by PhpStorm.
 * User: Martin Fierro
 * Date: 18/09/2018
 * Time: 08:01 AM
 */
/* Controllers */

$router->group(
    ['before' => 'auth'], function($router) {
        $router->controller('/mantenimiento', 'App\\Controller\\MantenimientoController');

        $router->controller('/perfil', 'App\\Controller\\PerfilController');

}
);
$router->controller('/home', 'App\\Controller\\HomeController');
$router->controller('/auth', 'App\\Controller\\AuthController');
$router->controller('/tienda','App\\Controller\\TiendaController');

$router->controller('/help', 'App\\Controller\\HelpController');


$router->get('/', function () {
    if (Core\Auth::isLoggedIn()) {
        \App\Helpers\UrlHelper::redirect('home');

    } else {
        \App\Helpers\UrlHelper::redirect('auth');
    }
});

