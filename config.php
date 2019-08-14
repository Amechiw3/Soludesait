<?php
/**
 * Created by PhpStorm.
 * User: Martin Fierro
 * Date: 30/09/2018
 * Time: 23:00 PM
 */
 return [
     'database' => [
         'driver'    => 'mysql',
         'host'     => '127.0.0.1',
         'database' => 'soludesait',
         'username' => 'root',
         'password' => '',
         'charset'  => 'utf8',
         'collation'=> 'utf8_unicode_ci',
         'prefix'   => ''
     ],
     'session-time' => 10,
     'session-name' => 'applicaction-auth',
     'secret-key'   => '@234696.23',
     'environment'  => 'dev', // dev, prod, stop
     'timezone'     => 'America/Hermosillo',
     'locale'       => 'es_MX',
     'cache'        => false,
     'company_name' => 'Soluciones y Desarrollo TI',
     'company_name_min' => 'SDTI'
 ];