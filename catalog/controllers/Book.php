<?php
class Book extends CI_Controller {
		
		
		
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
        redirect("./book");
    	}

        public function index(){
        	
        	   
			$data['booklists'] = $this->eachlistdb->get_book(); 
			      
			$data['booklistnum'] = $this->eachlistdb->get_book_num();
			$data['footernews'] = $this->homedb->get_footernews();
			$data['footerlastshot'] = $this->imagedb->get_lastshot();
//<----最近看的
			$data['recently_book'] = $this->categorydb->get_recently_book();	
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
			
		
           	$this->load->view('templates/home/header_list');
			$this->load->view('templates/list/book', $data);
			$this->load->view('templates/home/book_right', $data);		    					    
			$this->load->view('templates/home/footer',$data);
			
			
 
        }
		
		public function search(){
			
			$search = $this->input->post('searchMF');
		
			$data['searchbook'] = $this->eachlistdb->searchbook($search);
			$data['searchbook_num'] = $this->eachlistdb->searchbook_num($search); 
			$data['keyword']=$search;
			
			$data['footernews'] = $this->homedb->get_footernews();
			$data['footerlastshot'] = $this->imagedb->get_lastshot();
//<----最近看的
			$data['recently_book'] = $this->categorydb->get_recently_book();	
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
			$this->load->view('templates/list/books', $data);
			$this->load->view('templates/home/books_right');		    					    
			$this->load->view('templates/home/footer_search',$data);
			
		}
		
		
}
?>