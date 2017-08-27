<?php
class Home extends CI_Controller {

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

        
	        $data['articles'] = $this->homedb->get_articles();
	        
	        $data['footernews'] = $this->homedb->get_footernews();
	        $data['footerlastshot'] = $this->imagedb->get_lastshot();
	     	
			
	        $this->load->view('templates/home/header');
	        $this->load->view('templates/home/column_left', $data);
	        $this->load->view('templates/home/content', $data);
	        $this->load->view('templates/home/footer',$data);
        }
		public function message(){
			
			$config = Array(
			'protocol' => 'smtp',
			'smtp_host' => 'ssl://smtp.gmail.com',
			'smtp_port' => '465',
			'smtp_user' => 'dloygtw.il@gmail.com', 
			'smtp_pass' => 'syt3bS62zqYy', 
			'mailtype' => 'html',
			'charset' => 'utf-8',		
			'wordwrap' => TRUE
			);
			$username = $this->input->post('username');
			$useremail = $this->input->post('useremail');
			$message = $this->input->post('message');
			
			$this->load->library('email', $config);
			$this->email->set_newline("\r\n");
		
			$this->email->from($useremail, $username);
			$this->email->to('dloygtw.il@gmail.com');
			$this->email->subject('不要枉費青春--'.$username.'的留言');


			$this->email->message($message);

			if($this->email->send()){
							
				redirect('./');
		
			}else{
    			show_error($this->email->print_debugger());
			};
			
		}
		
     
}
?>
