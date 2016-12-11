<?php
class Programming extends CI_Controller {
		
		
		
        public function __construct(){
                parent::__construct();
             
                $this->load->model('eachlistdb');
                $this->load->model('categorydb');
                $this->load->helper('html');
               	$this->load->helper('url');	
		    	$this->load->helper('form');
		    	$this->load->library('form_validation');
		 
				
        }

        public function index(){
        	
        	   
			$data['musiclists'] = $this->eachlistdb->get_music(); 
			      
			$data['musiclistnum'] = $this->eachlistdb->get_music_num();
			
			$data['movielists'] = $this->eachlistdb->get_movie();               
			$data['movielistnum'] = $this->eachlistdb->get_movie_num();
//<----最近看的
			$data['recently_programming'] = $this->categorydb->get_recently_programming();	
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
			
		
           	$this->load->view('templates/home/header');
			$this->load->view('templates/list/Programming', $data);
			$this->load->view('templates/home/programming_right', $data);		    					    
			$this->load->view('templates/home/footer');
			
			
 
        }
		
		public function search(){
			
			$search = $this->input->post('searchMF');
		
			$data['searchmusic'] = $this->eachlistdb->searchrollmusic($search);
			$data['searchrollmusic_num'] = $this->eachlistdb->searchrollmusic_num($search); 
			
			$data['keyword']=$search;
			
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
							'posts' => $resultsMonth['posts_m']				
						);		
				}
			
			$this->load->view('templates/home/header');
			$this->load->view('templates/list/Programmings', $data);
			$this->load->view('templates/home/column_right');		    					    
			$this->load->view('templates/home/footer');
			
		}
		
		
}
?>