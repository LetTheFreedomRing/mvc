<?php

/**
 * registry
 */
abstract class Config
{
    public static $elements = array();

    public static function set($key, $value)
    {
        self::$elements[$key] = $value;
    }

    public static function get($key)
    {
        if (isset(self::$elements[$key])) {
            return self::$elements[$key];
        }

        return null;
    }


    public static function setFromXML($file)
    {
        $xmlObject = simplexml_load_file(CONF_DIR . $file, 'SimpleXMLElement', LIBXML_NOWARNING);

        if (!$xmlObject) {
            return;
        }

        $newArray = array() ;
        $array = (array)$xmlObject ;

        foreach ($array as $key => $value)  {
            $value = (array) $value ;

            $newArray [$key] = isset($value [0]) ? $value[0] : '' ;
        }

        $newArray = array_map("trim", $newArray);

        self::$elements = array_merge(self::$elements, $newArray);
    }

}