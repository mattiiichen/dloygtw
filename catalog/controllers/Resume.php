<?php
class Resume extends CI_Controller {
		public function __construct(){
                parent::__construct();
                $this->load->model('homedb');
                $this->load->model('imagedb');
                $this->load->helper('html');
               	$this->load->helper('url');	
		    
        }
		public function index(){
        		
                $data['articles'] = $this->homedb->get_articles();
                
            $this->load->view('templates/home/header_category');
			$this->load->view('templates/article/list', $data);		    
			$this->load->view('templates/home/footer_category',$data);
 
        }
		
		
}		
?>