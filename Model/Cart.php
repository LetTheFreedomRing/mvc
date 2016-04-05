<?php
/**
 * Class Cart
 */

class Cart
{
    /**
     * Products array
     *
     * @var array|mixed
     */
    private $products;


    /**
     *  Constructor
     */
    function __construct()
    {
        $this->products = Cookie::get('books') == null ?
            array()
            :
            unserialize(Cookie::get('books'));
    }


    /**
     * products getter
     *
     * @return mixed
     */
    public function getProducts()
    {
        return $this->products;
    }


    /**
     * adding product
     *
     * @param $id
     */
    public function addProduct($id)
    {
        // TODO: проверка на is_int(). Если не целое - исключение

        if (!in_array($id, $this->products)) {
            $this->products[] = $id;
        }

        Cookie::set('books', serialize($this->products));
    }


    /**
     * deleting product
     *
     * @param $id
     */
    public function deleteProduct($id)
    {
        // TODO: проверка на is_int(). Если не целое - исключение

        $key = array_search($id, $this->products);
        if ($key !== false){
            unset($this->products[$key]);
        }

        Cookie::set('books', serialize($this->products));
    }


    /**
     *  clear cart
     */
    public function clear()
    {
        Cookie::remove('books');
    }


    /**
     * check if empty
     *
     * @return bool
     */
    public function isEmpty()
    {
        return !$this->products;
    }

}