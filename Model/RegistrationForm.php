<?php

class RegistrationForm
{
    const PASS_FAIL = 'Passwords don\'t match';
    const BLANK_FIELDS = 'Fill the fields';

    public $email;
    public $password;
    public $repeatPassword;

    private $notice;

    public function __construct(Request $request)
    {
        $this->email = $request->post('email');
        $this->password = $request->post('password');
        $this->repeatPassword = $request->post('repeat_password');
    }

    /**
     * @return mixed
     */
    public function getNotice()
    {
        return $this->notice;
    }



    /**
     * @return bool
     */
    public function isValid()
    {
        if (!$this->passwordsMatch()) {
            $this->notice = self::PASS_FAIL;
            return false;
        }

        if ($this->password === '' || $this->email === '' || $this->repeatPassword === '') {
            $this->notice = self::BLANK_FIELDS;
            return false;
        }

        return true;
    }

    /**
     * @return bool
     */
    public function passwordsMatch()
    {
        return $this->repeatPassword == $this->password;
    }
}