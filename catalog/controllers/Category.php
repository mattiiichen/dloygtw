<?php
class Category extends CI_Controller {

        
        public function __construct(){
        	 	parent::__construct();
                 $this->load->model('categorydb');
                 $this->load->model('eachlistdb');
                 $this->load->model('homedb');
                 $this->load->model('imagedb');
                 $this->load->helper('url');
            	 $this->load->helper('html');
            	 $this->load->helper('form');
		    	 $this->load->library('form_validation');
        }
		public function switchLanguage($language = "") {
			
        $language = ($language != "") ? $language : "origin";
        $this->session->set_userdata('site_lang', $language);
        
       
    	if($y=="" && $m==""){
    		$search = $this->input->get('searchMF');
			redirect('./category/search?search='.$search);
		}else{
			$y = $this->input->get('y');
       		$m = $this->input->get('m');
			redirect('./category?y='.$y.'&m='.$m);
		}
        
        
        
    	}
        public function index(){
        	
        	
        	//Odd Content<==
	        $data['articles'] = $this->categorydb->get_category_content();
	        //Odd Content==>
	        $data['footernews'] = $this->homedb->get_footernews();
	        $data['footerlastshot'] = $this->imagedb->get_lastshot();
	        
	        //Column Right<==
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
			//Column Right==>
			
			 $data['year'] = $this->input->get('y');
			 $data['month'] = $this->input->get('m');
			
			
			
			
	        $this->load->view('templates/home/header_categoryA',$data);
	        $this->load->view('templates/article/category', $data);
	        $this->load->view('templates/home/column_right', $data);
	        $this->load->view('templates/home/footer_category',$data);
        }
		public function month_s(){
			
			$data['articles'] = $this->categorydb->get_month_content();	
			
			$data['year'] = $this->input->get('y');
            $data['month'] = $this->input->get('m');
			
			
			$this->load->view('templates/article/month_s', $data);
			
			
		}
		public function search(){
			
			$search = $this->input->post('searchMF');
			if($this->input->get('search')!=""){
				$search = $this->input->get('search');
			}
			$data['searchall'] = $this->categorydb->get_searchall($search);
			$data['searchall_num'] = $this->categorydb->get_searchall_num($search); 
			$data['keyword']=$search;
			$data['footernews'] = $this->homedb->get_footernews();
	        $data['footerlastshot'] = $this->imagedb->get_lastshot();
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
	
			$this->load->view('templates/home/header_category',$data);
			$this->load->view('templates/list/searchall', $data);
			$this->load->view('templates/home/category_right');		    					    
			$this->load->view('templates/home/footer_category',$data);
			
		}
     
}
?>