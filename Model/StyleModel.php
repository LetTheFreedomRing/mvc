<?php

/**
 * Created by PhpStorm.
 * User: Pavel
 * Date: 3/30/2016
 * Time: 7:47 PM
 */
class StyleModel
{
    public function getCategories()
    {
        $db = DbConnection::getInstance()->getPdo();
        $sth = $db->prepare("select * from style");

        $sth->execute();

        $data = $sth->fetchAll(PDO::FETCH_ASSOC);

        if(!$data) {
            throw new NotFoundException('categories not found');
        }

        return $data;
    }
}