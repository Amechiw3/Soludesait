<?php
/**
 * Created by PhpStorm.
 * User: Martin Fierro
 * Date: 21/09/2018
 * Time: 09:40 AM
 */

namespace Core;

use Core\ServicesContainer;

class Controller
{
    public function __construct() {
        $config = ServicesContainer::getConfig();

        $loader = new \Twig_Loader_Filesystem(_APP_PATH_ . 'views/');

        $this->provider = new \Twig_Environment($loader, array(
            'cache' => !$config['cache'] ? false : _CACHE_PATH_,
            'debug' => true,
        ));

        $this->provider->addExtension(new \Twig_Extension_Debug());

        // Filtros Customis
        $this->addCustomFilters();
    }

    private function addCustomFilters(){
        // Filter
        $this->provider->addFilter(new \Twig_SimpleFilter('public', ['App\\Helpers\\UrlHelper', 'public']));
        $this->provider->addFilter(new \Twig_SimpleFilter('url', ['App\\Helpers\\UrlHelper', 'base']));

        // Functions
        $this->provider->addFunction(
            new \Twig_SimpleFunction(
                'isLogin',[
                    'Core\\Auth',
                    'isLoggedIn'
                ]
            )
        );

        $this->provider->addFunction(
            new \Twig_SimpleFunction(
                'user', [
                    'Core\\Auth',
                    'getCurrentUser'
                ]
            )
        );

        #region FUNCIONES PARA EL MANEJO DE LOS ROLES
        $this->provider->addFunction(
            new \Twig_SimpleFunction(
                'isRoot',[
                    'App\\Middlewares\\RolMiddlewares',
                    'isRoot'
                ]
            )
        );
        $this->provider->addFunction(
            new \Twig_SimpleFunction(
                'isAdmin',[
                    'App\\Middlewares\\RolMiddlewares',
                    'isAdmin'
                ]
            )
        );
        $this->provider->addFunction(
            new \Twig_SimpleFunction(
                'isMaestro',[
                    'App\\Middlewares\\RolMiddlewares',
                    'isMaestro'
                ]
            )
        );
        $this->provider->addFunction(
            new \Twig_SimpleFunction(
                'isAlumno',[
                    'App\\Middlewares\\RolMiddlewares',
                    'isAlumno'
                ]
            )
        );

        $this->provider->addFunction(
            new \Twig_SimpleFunction(
                'tienePermiso',[
                    'App\\Middlewares\\RolMiddlewares',
                    'tienesPermiso'
                ]
            )
        );
        #endregion

    }

    protected function render(string $view, array $data = []) : string {
        return $this->provider->render($view, $data);
    }
}