<?php

/**
 * Created by PhpStorm.
 * User: Pavel
 * Date: 3/20/2016
 * Time: 10:33 PM
 */
class AuthorModel
{
    public function getBooks()
    {
        $db = DbConnection::getInstance()->getPdo();
        $sth = $db->query("select a.*, GROUP_CONCAT(b.title) as books
                            from author a join book_author b_a on b_a.author_id = a.id
                            join book b on b_a.book_id = b.id
                            group by a.id")
                            ;
        $sth->execute();

        $data = $sth->fetchAll(PDO::FETCH_ASSOC);

        if(!$data) {
            throw new NotFoundException('Author not found');
        }

        return $data;
    }
}