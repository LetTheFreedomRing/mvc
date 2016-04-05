<?php


abstract class MetaHelper
{
    private static $title = 'Mega site';
    const SEPARATOR = ' - ';

    /**
     * @return string
     */
    public static function getTitle()
    {
        return self::$title;
    }

    public static function addTitle($string)
    {
        self::$title .= self::SEPARATOR . $string;
    }

    public static function setTitle($title)
    {
        self::$title = $title;
    }

}