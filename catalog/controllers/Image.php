<?php
class Image extends CI_Controller {
		
		
		
        public function __construct(){
                parent::__construct();
             
           		$this->load->model('homedb');
                $this->load->model('imagedb');
                $this->load->helper('html');
               	$this->load->helper('url');	
		    	$this->load->helper('form');
		    	$this->load->library('form_validation');
		 
				
        }
		
        public function index(){
        	
//================載入CKEditor以下============         	
        	$this->load->library('ckeditor');
			$this->load->library('ckfinder');

			//$this->ckeditor->basePath = base_url().'asset/ckeditor/';
			$this->ckeditor->basePath = 'asset/ckeditor/';
			$this->ckeditor->config['toolbar'] = array(
			                array( 'Source', '-', 'Bold', 'Italic', 'Underline', '-','Cut','Copy','Paste','PasteText','PasteFromWord','-','Undo','Redo','-','NumberedList','BulletedList' ,'Image','Flash','Table','HorizontalRule','SpecialChar','PageBreak','Format','Font','FontSize')
		                                                    );
			$this->ckeditor->config['width'] = '90%';
			$this->ckeditor->config['height'] = '330px';            
			$this->ckeditor->config['language'] = 'zh-tw';

			//Add Ckfinder to Ckeditor
			$this->ckfinder->SetupCKEditor($this->ckeditor,'../asset/ckfinder/'); 
//================載入CKEditor以上============    
			$data['footernews'] = $this->homedb->get_footernews();
			$data['footerlastshot'] = $this->imagedb->get_lastshot();
		
           	$this->load->view('templates/home/header_category');
			$this->load->view('templates/image/upload');				    					    
			$this->load->view('templates/home/footer_category',$data);
			
			
 
        }
		
		 public function create(){
		 	
		 	$data = $this->imagedb->uploadimage();
			if($data['category_id']==1){
				$data['category_id']="people";
			}elseif($data['category_id']==2){
				$data['category_id']="event";
			}elseif($data['category_id']==3){
				$data['category_id']="thing";
			}
				
			
			$file = "./data/content.json";
			$content = file_get_contents($file);
			$newword = "[
	{
    \"title\": \"".$data['title']."\",
    \"category\": \"".$data['category_id']."\",
    \"images\": {
      \"thumb\": \"../../CKEdit/upload/images/".$data['thumb']."\",
      \"large\": \"../../CKEdit/upload/images/".$data['large']."\"
    },
    \"date\": \"".$data['date']."\"
  },";
			$content = substr_replace($content, $newword ,0,1);
			file_put_contents($file, $content);

			redirect('./travel/images');
		 }
		
		
}
?>