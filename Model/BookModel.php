<?php

/**
 * Created by PhpStorm.
 * User: Pavel
 * Date: 3/14/2016
 * Time: 12:03 AM
 */
class BookModel
{
    const DEFAULT_IMAGE = '/img/default_book_image.jpg';

    public function findById($id)
    {
        $db = DbConnection::getInstance()->getPdo();
        $sth = $db->prepare('SELECT * FROM book WHERE id = :book_id');
        $params = array(
            'book_id' => $id
        );
        $sth->execute($params);
        $book = $sth->fetch(\PDO::FETCH_ASSOC);
        if (!$book) {
            throw new NotFoundException("book #{$id} not found");
        }
        return $book;
    }
    public function findAll($status = true)
    {
        $sql = "SELECT * FROM book";
        if ($status) {
            $sql .= ' WHERE status = 1';
        }
        $sql .= ' ORDER BY price';
        $db = DbConnection::getInstance()->getPdo();
        $sth = $db->query($sql);
        $sth->execute();
        $data = array();
        while ($book = $sth->fetch(\PDO::FETCH_ASSOC)) {
            $id = $book['id'];
            $book['image'] = $this->imageExists($id) ? "/uploads/{$id}.jpg" : self::DEFAULT_IMAGE;
            $data[] = $book;
        }
        if (!$data) {
            throw new NotFoundException('Books not found');
        }
        return $data;
    }


    public function findAllNormal()
    {
        $db = DbConnection::getInstance()->getPdo();
        $sth = $db->query("select b.id, b.title, GROUP_CONCAT(a.name), b.price , b.status
                            from book b join book_author a_b on a_b.book_id = b.id
                            join author a on a_b.author_id = a.id
                            group by b.id
                            having b.status = 1");
        $sth -> execute();
        $data = array();

        while ($book = $sth->fetch(\PDO::FETCH_ASSOC)) {
            $id = $book['id'];
            $book['image'] = $this->imageExists($id) ? "/uploads/{$id}.jpg" : self::DEFAULT_IMAGE;
            $data[] = $book;
        }

        if(!$data) {
            throw new NotFoundException('Books not found');
        }

        return $data;
    }

    /**
     * @param $id
     * @return mixed
     * @throws NotFoundException
     */
    public function  findByIdNormal($id)
    {
        $db = DbConnection::getInstance()->getPdo();
        $sth = $db->prepare("select b.id, b.title,GROUP_CONCAT(a.name), b.price , b.status
                            from book b join book_author a_b on a_b.book_id = b.id
                            join author a on a_b.author_id = a.id
                            group by b.id
                            having b.status = 1 AND b.id = :book_id");
        $params = array(
            'book_id' => $id,
        );
        $sth->execute($params);

        $book = $sth->fetch(PDO::FETCH_ASSOC);

        if(!$book){
            throw new NotFoundException("book #{$id} not found");
        }

        return $book;
    }

    public function findByIdArray(array $ids)
    {
        if (!$ids) {
            return array();
        }
        $params = array();
        foreach ($ids as $v) {
            $params[] = '?';
        }
        $params = implode(',', $params);
        $db = DbConnection::getInstance()->getPdo();
        $sth = $db->prepare("SELECT * FROM book WHERE status = 1 AND id IN ({$params}) ORDER BY price");
        $sth->execute($ids);
        return $sth->fetchAll(PDO::FETCH_ASSOC);
    }

    public function save(array $book)
    {
        // TODO: проверить, чтобы в массиве $message были ключи как поля в таблице. Иначе - исключение
        // TODO: использовать этот же метод для добавления книг. Проверка на is_null(id) => формируем соответсвующую строку с запросом

        $db = DbConnection::getInstance()->getPdo();
        $sth = $db->prepare('UPDATE book SET title = :title, description = :description, price = :price, status = :status, style_id = :style_id where id = :id');
        $sth->execute($book);
    }

    public function remove(array $book)
    {
        $db = DbConnection::getInstance()->getPdo();
        $sth= $db->prepare("Delete from book where id = {$book['id']}");
        $sth->execute($book);
    }

    public function activate($book)
    {
        $db = DbConnection::getInstance()->getPdo();
        $sth = $db->prepare("UPDATE book SET status = '1' where id = {$book['id']}");
        $sth->execute($book);
    }

    public function deactivate($book)
    {
        $db = DbConnection::getInstance()->getPdo();
        $sth = $db->prepare("UPDATE book SET status = '0' where id = {$book['id']}");
        $sth->execute($book);
    }

    public function add(array $book)
    {
        $db = DbConnection::getInstance()->getPdo();
        $sth = $db->prepare('insert into book (id, title, description, price, status, style_id) values (:id, :title, :description, :price, :status, :style_id)');
        $sth->execute($book);
    }

    public function imageExists($id)
    {
        return file_exists(UPLOAD_DIR . $id . '.jpg');
    }
}
























