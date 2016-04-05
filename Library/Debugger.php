<?php

/**
 * Created by PhpStorm.
 * User: Pavel
 * Date: 3/14/2016
 * Time: 12:32 AM
 */
abstract class Debugger
{
    public static function debug($value)
    {
        echo "<pre>";
        var_dump($value);
        echo "</pre>";
    }
}