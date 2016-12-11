<?php
class Article extends CI_Controller {
		
		
		
		
        public function __construct(){
                parent::__construct();
                $this->load->model('homedb');
                $this->load->model('bluelagoon');
                $this->load->model('categorydb');
                $this->load->model('eachlistdb');
                $this->load->model('imagedb');
                $this->load->helper('html');
               	$this->load->helper('url');	
		    	$this->load->helper('form');
		    	$this->load->library('form_validation');
        }
		public function switchLanguage($language = "") {
		$id = $this->input->get('id');
        $language = ($language != "") ? $language : "origin";
        $this->session->set_userdata('site_lang', $language);
       
        redirect("./article/view/".$id);
    	}
        public function index(){
        		
                $data['articles'] = $this->homedb->get_articles();
           
 
        }
		
		public function getlist(){
			$data['articles'] = $this->homedb->get_article_list();
			$data['footernews'] = $this->homedb->get_footernews();
	        $data['footerlastshot'] = $this->imagedb->get_lastshot();
			$this->load->view('templates/home/header_category');
			$this->load->view('templates/article/list', $data);		    
			$this->load->view('templates/home/footer_category',$data);
		}
		
		public function delete(){
			$data = $this->input->post('articlebox');
			$this->homedb->del_articles($data);
			redirect('/article/getlist');
			
		}
		
        public function view($id = NULL){
        	
        
	        $data['article'] = $this->homedb->get_articles($id);
	      	$data['viewID']= $id;
	       
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
			
	        $this->load->view('templates/home/header_article', $data);
		    $this->load->view('templates/article/view', $data);
		    $this->load->view('templates/home/article_right', $data);	
		    $this->load->view('templates/home/footer_view',$data);
                
                
        }
        
        public function edit(){
//================載入CKEditor以下============        	
			$this->load->library('ckeditor');
			$this->load->library('ckfinder');

//			$this->ckeditor->basePath = base_url().'asset/ckeditor/';
			$this->ckeditor->basePath = 'asset/ckeditor/';
			$this->ckeditor->config['toolbar'] = array(
			                array( 'Source', '-', 'Bold', 'Italic', 'Underline', '-','Cut','Copy','Paste','PasteText','PasteFromWord','-','Undo','Redo','TextColor','-','NumberedList','BulletedList' ,'Image','Flash','Table','HorizontalRule','SpecialChar','PageBreak','Format','Font','FontSize')
		                                                    );
			$this->ckeditor->config['width'] = '90%';
			$this->ckeditor->config['height'] = '700px';              
			$this->ckeditor->config['language'] = 'zh-tw';

			//Add Ckfinder to Ckeditor
			$this->ckfinder->SetupCKEditor($this->ckeditor,'../asset/ckfinder/'); 
//================載入CKEditor以上============  

		    
		    $id = $this->input->get('id');
			$data['title'] = '修改文章';
			
			$this->form_validation->set_rules('title', 'Title', 'required');
		    $this->form_validation->set_rules('editor1', 'text', 'required');
		    $this->form_validation->set_rules('imgName', 'Image Name', 'required');
		    $this->form_validation->set_rules('engTitle', 'English Title', 'required');
		    $this->form_validation->set_rules('dtpicker', 'DateTime', 'required');
			
		    if ($this->form_validation->run() === FALSE){
		    	
		        $data['editArticle'] = $this->bluelagoon->get_articles($id);
		        $this->load->view('templates/article/edit', $data);
	
		    }else{	
	
		    	
		    	$this->homedb->update_articles($id);	    	
		        redirect('/article/view/'.$id);
//		        $this->load->view('templates/article/view/'.$last_id);
		    }
			
		}
        
        public function create(){
//================載入CKEditor以下============         	
        	$this->load->library('ckeditor');
			$this->load->library('ckfinder');

			//$this->ckeditor->basePath = base_url().'asset/ckeditor/';
			$this->ckeditor->basePath = 'asset/ckeditor/';
			$this->ckeditor->config['toolbar'] = array(
			                array( 'Source', '-', 'Bold', 'Italic', 'Underline', '-','Cut','Copy','Paste','PasteText','PasteFromWord','-','Undo','Redo','TextColor','-','NumberedList','BulletedList' ,'Image','Flash','Table','HorizontalRule','SpecialChar','PageBreak','Format','Font','FontSize')
		                                                    );
			$this->ckeditor->config['width'] = '90%';
			$this->ckeditor->config['height'] = '700px';            
			$this->ckeditor->config['language'] = 'zh-tw';

			//Add Ckfinder to Ckeditor
			$this->ckfinder->SetupCKEditor($this->ckeditor,'../asset/ckfinder/'); 
//================載入CKEditor以上============    
			$data['footernews'] = $this->homedb->get_footernews();
			$data['footerlastshot'] = $this->imagedb->get_lastshot();

		    $data['title'] = '新增文章';

		    $this->form_validation->set_rules('title', 'AAATitle', 'required');
		    $this->form_validation->set_rules('editor1', 'Text', 'required');
		    $this->form_validation->set_rules('imgName', 'Image Name', 'required');
		    $this->form_validation->set_rules('subtitle', 'Subtitle', 'required');
		    $this->form_validation->set_rules('engTitle', 'Engtitle', 'required');
		    $this->form_validation->set_rules('dtpicker', 'DateTime', 'required');
		    
			
		    if ($this->form_validation->run() === FALSE)
		    {
		        $this->load->view('templates/home/header_category');  
		        $this->load->view('templates/article/create', $data);
				$this->load->view('templates/home/footer_category',$data);
		    }
		    else
		    {
		    	$this->homedb->set_articles();
		    	$last_id="";
		        $last_id = $this->homedb->get_lastArticle();
		        redirect('/article/view/'.$last_id);
//		        $this->load->view('templates/article/view/'.$last_id);
		    }
		}
       
}
?>