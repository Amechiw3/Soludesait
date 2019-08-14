<?php
/**
 * Created by PhpStorm.
 * User: Martin Fierro
 * Date: 18/09/2018
 * Time: 08:01 AM
 */
/* Controllers */
$router->group(['before' => 'auth'], function($router) {
    $router->controller('/mantenimiento', 'App\\Controller\\MantenimientoController');
    $router->controller('/mantenimiento/categorias', 'App\\Controller\\CategoriaController');
    $router->controller('/mantenimiento/ciudades', 'App\\Controller\\CiudadController');
    $router->controller('/mantenimiento/cupones', 'App\\Controller\\CuponController');
    $router->controller('/mantenimiento/direcciones', 'App\\Controller\\DireccionController');
    $router->controller('/mantenimiento/estados', 'App\\Controller\\EstadoController');
    $router->controller('/mantenimiento/etiquetas', 'App\\Controller\\EtiquetaController');
    $router->controller('/mantenimiento/galerias', 'App\\Controller\\GaleriaController');
    $router->controller('/mantenimiento/historial', 'App\\Controller\\HistorialController');
    $router->controller('/mantenimiento/mensajes', 'App\\Controller\\MensajeController');
    $router->controller('/mantenimiento/detalles', 'App\\Controller\\OrdenProductoController');
    $router->controller('/mantenimiento/paises', 'App\\Controller\\PaisController');
    $router->controller('/mantenimiento/permisos', 'App\\Controller\\PermisoController');
    $router->controller('/mantenimiento/denegar', 'App\\Controller\\PermisoNegadoController');
    $router->controller('/mantenimiento/productos', 'App\\Controller\\ProductoController');
    $router->controller('/mantenimiento/productos_etiquetas', 'App\\Controller\\ProductoEtiquetaController');
    $router->controller('/mantenimiento/roles', 'App\\Controller\\RolController');
    $router->controller('/mantenimiento/tarjetas', 'App\\Controller\\TarjetaController');
    $router->controller('/mantenimiento/usuarios', 'App\\Controller\\UsuarioController');
    $router->controller('/mantenimiento/ventas', 'App\\Controller\\VentaOrdenController');
    $router->controller('/perfil', 'App\\Controller\\PerfilController');
});
$router->controller('/home', 'App\\Controller\\HomeController');
$router->controller('/auth', 'App\\Controller\\AuthController');
$router->controller('/tienda','App\\Controller\\TiendaController');
$router->controller('/help', 'App\\Controller\\HelpController');
$router->controller('/checkout', 'App\\Controller\\CheckoutController');

$router->get('/', function () {
    if (Core\Auth::isLoggedIn()) {
        \App\Helpers\UrlHelper::redirect('home');

    } else {
        \App\Helpers\UrlHelper::redirect('auth');
    }
});

