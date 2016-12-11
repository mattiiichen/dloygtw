<?php
class Game extends CI_Controller {
		
		
		
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
        redirect("./game");
    	}
        public function index(){
        	
        	   
			$data['gamelists'] = $this->eachlistdb->get_game(); 
			      
			$data['gamelistnum'] = $this->eachlistdb->get_game_num();
			
			$data['recently_game'] = $this->categorydb->get_recently_game();	
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
			
		
           	$this->load->view('templates/home/header_list');
			$this->load->view('templates/list/game', $data);
			$this->load->view('templates/home/game_right', $data);		    					    
			$this->load->view('templates/home/footer',$data);
			
			
 
        }
		
		public function search(){
			
			$search = $this->input->post('searchMF');
		
			$data['searchgame'] = $this->eachlistdb->searchgame($search);
			$data['searchgame_num'] = $this->eachlistdb->searchgame_num($search); 
			
	
			$data['keyword']=$search;
			$resultsYears = $this->eachlistdb->get_category_year();
			$data['footernews'] = $this->homedb->get_footernews();
			$data['footerlastshot'] = $this->imagedb->get_lastshot();	
			
//<----最近玩的
			$data['recently_game'] = $this->categorydb->get_recently_game();	
//最近玩的---->
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
			$this->load->view('templates/list/games', $data);
			$this->load->view('templates/home/games_right');		    					    
			$this->load->view('templates/home/footer_search',$data);
			
		}
		
		
}
?>