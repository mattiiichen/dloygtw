<?php
     class Email extends CI_controller
     {
        function index()
        {

         $this->load->library('email');
         $this->load->helper('url');
         $this->load->helper('form');

        $config= Array(
            'protocol'  =>'localhost',
            'smtp_host' => 'localhost',
            'smtp_port' => 'localhost',
            'smtp_user'=>  'root',
            'smtp_pass' =>''
            );

        $this->load->library('email','$config');
        $this->email->set_newline("\r\n");
        $this->email->from('nisha@gmail.com','nisha');
        $this->email->to('cse1473@gmail.com');
        $this->email->subject('this is email with subject');
        $this->email->message('it s working properly');

        if($this->email->send())
        {
            echo "your email send";
        }
        else
        {
            show_error($this->email->print_debugger());
        }
    }
}

?>