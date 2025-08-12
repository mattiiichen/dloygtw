<?php
class Think extends CI_Controller {
		
		
		
        public function __construct(){
                parent::__construct();
             
                $this->load->model('eachlistdb');
                $this->load->model('categorydb');
                $this->load->model('homedb');
                $this->load->model('imagedb');
                $this->load->helper('html');
               	$this->load->helper('url');	
		    	$this->load->helper('form');
		    	$this->load->library('form_validation');
		 
				
        }
		public function switchLanguage($language = "") {
			
        $language = ($language != "") ? $language : "origin";
        $this->session->set_userdata('site_lang', $language);
        redirect("./think");
        
    	}
        public function index(){
        	
        	   
			$data['thinklists'] = $this->eachlistdb->get_think(); 
			      
			$data['thinklistnum'] = $this->eachlistdb->get_think_num();
			
//<----最近看的
			$data['recently_think'] = $this->categorydb->get_recently_think();	
//最近看的---->
			//右邊category 
			$data['footernews'] = $this->homedb->get_footernews();
			$data['footerlastshot'] = $this->imagedb->get_lastshot();
			
			$resultsYears = $this->eachlistdb->get_category_year();
				
				foreach ($resultsYears as $resultsYear) {
						$data['category_year'][] = array(
							'year' => $resultsYear['Year'],
							'posts' => $resultsYear['posts_y']				
						);		
				}
			$resultsMonths = $this->eachlistdb->get_category_month();
				
				foreach ($resultsMonths as $resultsMonth) {
						$data['category_month'][] = array(
							'year' => $resultsMonth['Year'],
							'month' => $resultsMonth['Month'],
							'month_num' => $resultsMonth['Month_num'],
							'posts' => $resultsMonth['posts_m']				
						);		
				}
			//右邊category 
			
			
           	$this->load->view('templates/home/header_list');
			$this->load->view('templates/list/think', $data);
			$this->load->view('templates/home/think_right', $data);		    					    
			$this->load->view('templates/home/footer',$data);
			
			
 
        }
		
		public function search(){
			
			$search = $this->input->post('searchMF');
		
			$data['searchthink'] = $this->eachlistdb->searchthink($search);
			$data['searchthink_num'] = $this->eachlistdb->searchthink_num($search); 
			$data['footernews'] = $this->homedb->get_footernews();
			$data['footerlastshot'] = $this->imagedb->get_lastshot();
		
			$data['keyword']=$search;
//<----最近看的
			$data['recently_think'] = $this->categorydb->get_recently_think();	
//最近看的---->
			//右邊category 
			
			
			$resultsYears = $this->eachlistdb->get_category_year();
				
				foreach ($resultsYears as $resultsYear) {
						$data['category_year'][] = array(
							'year' => $resultsYear['Year'],
							'posts' => $resultsYear['posts_y']				
						);		
				}
			$resultsMonths = $this->eachlistdb->get_category_month();
				
				foreach ($resultsMonths as $resultsMonth) {
						$data['category_month'][] = array(
							'year' => $resultsMonth['Year'],
							'month' => $resultsMonth['Month'],
							'month_num' => $resultsMonth['Month_num'],
							'posts' => $resultsMonth['posts_m']				
						);		
				}
			//右邊category 
			
			$this->load->view('templates/home/header_category');
			$this->load->view('templates/list/thinks', $data);
			$this->load->view('templates/home/thinks_right');		    					    
			$this->load->view('templates/home/footer_category',$data);
			
		}
		
		
}
?>