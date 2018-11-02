<?php
/**
 * Created by PhpStorm.
 * User: Martin Fierro
 * Date: 12/09/2018
 * Time: 08:08 AM
 */

namespace Core;


use Monolog\Handler\StreamHandler;
use Monolog\Logger;

class Log {

    public static function warning(string $name, string $message) {
        self::put($name, $message, Logger::WARNING, "WARNING");
    }

    public static function error(string $name, string $message) {
        self::put($name, $message, Logger::ERROR, "ERROR");
    }

    public static function info(string $name, string $message) {
        self::put($name, $message, Logger::INFO, "INFO");
    }

    public static function critical(string $name, string $message) {
        self::put($name, $message, Logger::CRITICAL, "CRITICAL");
    }

    public static function debug(string $name, string $message) {
        self::put($name, $message, Logger::DEBUG, "DEBUG");
    }

    public static function emergency(string $name, string $message) {
        self::put($name, $message, Logger::EMERGENCY, "EMERGENCY");
    }

    public static function alert(string $name, string $message) {
        self::put($name, $message, Logger::ALERT, "ALERT");
    }

    private static function put(string $name, string $message, int $type, string $typeName) {
        $file = sprintf('%s- ' . date('Ymd') . '.log', $typeName);
        $log = new Logger($name);
        $log->pushHandler(
            new StreamHandler(_LOG_PATH_ . '/' . $file, $type)
        );

        switch($type){
            case 100:
                $log->debug($message);
                break;
            case 200:
                $log->info($message);
                break;
            case 300:
                $log->warning($message);
                break;
            case 400:
                $log->error($message);
                break;
            case 500:
                $log->critical($message);
                break;
            case 550:
                $log->alert($message);
                break;
            case 600:
                $log->emergency($message);
                break;
        }
    }
}