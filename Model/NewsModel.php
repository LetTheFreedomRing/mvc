<?php

/**
 * Created by PhpStorm.
 * User: Pavel
 * Date: 3/20/2016
 * Time: 11:48 PM
 */
class NewsModel
{
    public function getNews()
    {
        $db = DbConnection::getInstance()->getPdo();
        $sth = $db->query("select * from news");

        $sth->execute();

        $data = $sth->fetchAll(PDO::FETCH_ASSOC);

        if(!$data) {
            throw new NotFoundException('News not found');
        }

        return $data;
    }

    public function getById($id)
    {
        $db = DbConnection::getInstance()->getPdo();
        $sth = $db->query("select * from news where id = {$id}");

        $params = array(
            'news_id' => $id
        );

        $sth->execute($params);

        $new = $sth->fetch(PDO::FETCH_ASSOC);

        if(!$new) {
            throw new NotFoundException('News not found');
        }

        return $new;
    }
}