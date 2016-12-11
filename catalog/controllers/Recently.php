<?php
class Recently extends CI_Controller {
		
		
		
		
        public function __construct(){
                parent::__construct();
                $this->load->model('homedb');
                $this->load->model('imagedb');
                $this->load->model('bluelagoon');
                $this->load->model('categorydb');
                $this->load->model('eachlistdb');
                $this->load->helper('html');
               	$this->load->helper('url');	
		    	$this->load->helper('form');
		    	$this->load->library('form_validation');
        }

        public function index(){
        		
                $data['recentlys'] = $this->categorydb->get_recently_content();
                
           	$this->load->view('templates/home/header');
			$this->load->view('templates/recently/recently', $data);		    
			$this->load->view('templates/home/footer');
 
        }
		
		public function get_recentlist(){
			
			$data['recentlys'] = $this->categorydb->get_recently_content();
            $data['footernews'] = $this->homedb->get_footernews();
			$data['footerlastshot'] = $this->imagedb->get_lastshot();
           	$this->load->view('templates/home/header_category');
			$this->load->view('templates/recently/recently', $data);		    
			$this->load->view('templates/home/footer_category',$data);
		}
		
        public function create(){



		    $data['title'] = 'Create "Do something new"';

		    $this->form_validation->set_rules('title', 'Title', 'required');
		    $this->form_validation->set_rules('imgName', 'Image Name', 'required');
		    /*$this->form_validation->set_rules('youtube', 'Youtube', 'required');*/
			$data['footernews'] = $this->homedb->get_footernews();
			$data['footerlastshot'] = $this->imagedb->get_lastshot();
		    
			
		    if ($this->form_validation->run() === FALSE)
		    {
		        $this->load->view('templates/home/header_category');  
		        $this->load->view('templates/recently/create', $data);
				$this->load->view('templates/home/footer',$data);
		    }
		    else
		    {
		    	$this->categorydb->set_recently();
		    /*	$last_id="";
		        $last_id = $this->homedb->get_lastArticle();*/
		        redirect('/recently/get_recentlist');
//		        $this->load->view('templates/article/view/'.$last_id);
		    }
		}
		
		public function edit(){


		    
		    $id = $this->input->get('id');
			$data['title'] = '修改Recently';
			
			$this->form_validation->set_rules('title', 'Title', 'required');
		    $this->form_validation->set_rules('imgName', 'Image Name', 'required');
		    $this->form_validation->set_rules('youtubeurl', 'Youtube URL', 'required');
			
		    if ($this->form_validation->run() === FALSE){
		    	
		        $data['editRecently'] = $this->categorydb->get_recently($id);
		        $this->load->view('templates/recently/edit', $data);
	
		    }else{	
	
		    	
		    	$this->categorydb->update_recently($id);	    	
		        redirect('/recently/get_recentlist');
//		        $this->load->view('templates/article/view/'.$last_id);
		    }
			
		}
		public function delete(){
			$data = $this->input->post('articlebox');
			$this->categorydb->del_recently($data);
			redirect('/recently/get_recentlist');
			
		}
		
        public function view($id = NULL){
        	
        
	        $data['article'] = $this->homedb->get_articles($id);
	      	$data['viewID']= $id;
	       
	        
	        
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
			
	        $this->load->view('templates/home/header');
		    $this->load->view('templates/article/view', $data);
		    $this->load->view('templates/home/column_right', $data);	
		    $this->load->view('templates/home/footer');
                
                
        }
        

        
       
}
?>