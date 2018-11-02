<?php
/**
 * Created by Martin Fierro.
 * User: Martin Fierro
 * Date: 31/10/2018
 * Time: 09:55 AM
 */

function exception_error_handler($severidad, $mensaje, $fichero, $linea) {
    if (!(error_reporting() && $severidad)) {
        //Este código de error no esta incluida en error reporting
        return;
    }
    throw new ErrorException($mensaje, 0, $severidad, $fichero, $linea);
}

set_error_handler("exception_error_handler");

/* COMPOSER & PSR 4 */
require_once 'vendor/autoload.php';

/* Configuracion Inicial */
\Core\ServicesContainer::setConfig(
    require_once 'config.php'
);

/*Inicializar DbContext*/
\Core\ServicesContainer::initializeDbContext();

/* Lectura de Configuacion */
$config = \Core\ServicesContainer::getConfig();

date_default_timezone_set($config['timezone']);

ini_set('memory_limit', '-1');

/* URL BASE */
$base_url = '';
$base_folder = strtolower(str_replace(basename($_SERVER['SCRIPT_NAME']), '', $_SERVER['SCRIPT_NAME']));

if (isset($_SERVER['HTTP_HOST'])) {
    $base_url = isset($_SERVER['HTTPS']) && strtolower($_SERVER['HTTPS']) != 'off' ? 'http' : 'http';
    $base_url .= '://'. $_SERVER['HTTP_HOST'];
    $base_url .= $base_folder;
}

define('_BASE_HTTP_', $base_url);
define('_BASE_PATH_', __DIR__ . '/');
define('_LOG_PATH_', __DIR__ . '/log/');
define('_CACHE_PATH_', __DIR__. '/cache/');
define('_APP_PATH_', __DIR__. '/app/');
define('_CURRENT_URI_', str_replace($base_folder, '', $_SERVER['REQUEST_URI'])); // <<----- Cambios...

if ($config['environment'] == 'stop') {
    exit('Website is current down...');
}

if ($config['environment'] == 'prod') {
    error_reporting(0);
}
/* Configuracion end */

/* ROUTER START */
$router = new \Phroute\Phroute\RouteCollector();

require_once 'app/filters.php';
require_once 'app/routes.php';

$dispatcher = new \Phroute\Phroute\Dispatcher($router->getData());
$response = $dispatcher->dispatch($_SERVER['REQUEST_METHOD'], _CURRENT_URI_);

echo $response;
/* ROUTER END */