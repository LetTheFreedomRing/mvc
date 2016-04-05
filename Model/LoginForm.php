<?php

/**
 * Created by PhpStorm.
 * User: PHP acedemy
 * Date: 01.03.2016
 * Time: 20:33
 */
class LoginForm
{
    public $email;
    public $password;

    /**
     * ContactForm constructor.
     * @param Request $request
     */
    public function __construct(Request $request)
    {
        $this->email = $request->post('email');
        $this->password = $request->post('password');
    }


    /**
     * @return bool
     */
    public function isValid()
    {
        $res = $this->email !== '' && $this->password !== '';

        return $res;
    }


}