<?php
class Bluelagoon extends CI_Controller {

        public function __construct(){
			parent::__construct();
			$this->load->model('homedb');
			$this->load->helper('html');
			$this->load->helper('form');
			$this->load->helper('url');
			$this->load->helper('cookie');
			$this->load->library('session');
			
        }

        public function index(){
        		
		    
		        
			$data['csrf'] = array(
			        'name' => $this->security->get_csrf_token_name(),
			        'hash' => $this->security->get_csrf_hash()
			);
		
		    $this->load->view('templates/bluelagoon/index',$data);
	 
        }
 		public function login(){
 			

        	$data['articles'] = $this->homedb->get_articles();
        	
        	
        	$newdata = array(
        		
                   'username'  => 'johndoe',
                   'email'     => 'johndoe@some-site.com',
                   'logged_in' => TRUE
               );
			
	
			
		/*echo $this->session->userdata('token');*/
        	redirect('/article/getlist');
        /*	var_dump($this->input->post());*/
        	echo $this->input->post('aaa')."GGG";
        	echo $this->input->post('bbb')."GGG";
     


            
        	//echo $this->input->post('password');exit;        	
	 
        }
     
}
?>