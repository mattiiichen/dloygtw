<?php
class Rollfilm extends CI_Controller {
		
		
		
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
        redirect("./rollfilm");
    	}
    	
    	
        public function index(){
        	
        	   
			$data['musiclists'] = $this->eachlistdb->get_music(); 
			      
			$data['musiclistnum'] = $this->eachlistdb->get_music_num();
			
			$data['movielists'] = $this->eachlistdb->get_movie();               
			$data['movielistnum'] = $this->eachlistdb->get_movie_num();
			
//<----最近聽的、最近看的
			$data['recently_music'] = $this->categorydb->get_recently_music();	
			$data['recently_movie'] = $this->categorydb->get_recently_movie();			
//最近聽的、最近看的---->
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
				
			/*$rollfilm	*/
				
			//右邊category 
			
		
           	$this->load->view('templates/home/header_list');
			$this->load->view('templates/list/rollfilm', $data);
			$this->load->view('templates/home/rollfilm_right', $data);		    					    
			$this->load->view('templates/home/footer',$data);
			
			
 
        }
		
		public function search(){
			
			$search = $this->input->post('searchMF');
		
			$data['searchrollfilm'] = $this->eachlistdb->searchrollfilm($search);
			$data['searchrollfilm_num'] = $this->eachlistdb->searchrollfilm_num($search); 
			
		/*	$data['searchmovie'] = $this->eachlistdb->searchrollmovie($search); 
			$data['searchrollmovie_num'] = $this->eachlistdb->searchrollmovie_num($search); */
			$data['keyword']=$search;
			$data['recently_music'] = $this->categorydb->get_recently_music();
	
			$data['recently_movie'] = $this->categorydb->get_recently_movie();
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
							'posts' => $resultsMonth['posts_m']				
						);		
				}
			
			$this->load->view('templates/home/header_category');
			$this->load->view('templates/list/rollfilms', $data);
			$this->load->view('templates/home/rollfilms_right');		    					    
			$this->load->view('templates/home/footer_search',$data);
			
		}
		
		
}
?>