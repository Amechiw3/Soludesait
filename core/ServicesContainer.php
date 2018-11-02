<?php
/**
 * Created by PhpStorm.
 * User: Martin Fierro
 * Date: 12/09/2018
 * Time: 08:50 AM
 */

namespace Core;


class ServicesContainer {

    private static $config;
    private static $dbContext = false;

    public static function setConfig(array $value) {
        self::$config = $value;
    }

    public static function getConfig() : array {
        return self::$config;
    }

    public static function initializeDbContext() {
        if (!self::$dbContext) {
            DbContext::initialize();
            self::$dbContext = true;
        }
    }
}