<?php
class Travel extends CI_Controller {

        public function __construct(){
			parent::__construct();
			$this->load->model('homedb');
			$this->load->model('imagedb');
			$this->load->helper('html');
			$this->load->helper('form');
			$this->load->helper('url');
			$this->load->helper('cookie');
			$this->load->library('session');
			
        }

        public function index(){
        		
		    
		     
		
	 
        }
        public function switchLanguage($language = "") {
			
        $language = ($language != "") ? $language : "origin";
        $this->session->set_userdata('site_lang', $language);
        redirect("./travel/images");
        
    	}
 		public function images(){
 					
		 $data['footernews'] = $this->homedb->get_footernews();
	     $data['footerlastshot'] = $this->imagedb->get_lastshot();
	     
         $this->load->view('templates/travel/header_images');
         $this->load->view('templates/travel/images');
         $this->load->view('templates/travel/footer_image',$data);
	
	    	
	 
        }
     
}
?>