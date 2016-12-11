<?php
	class ImageDb extends CI_Model {

        public function __construct(){
                $this->load->database();
        }
  
		
        public function uploadimage(){
             $data = array(
		        'title' => $this->input->post('title'),
				'thumb' => substr_replace($this->input->post('imgName'), 'S', -4, 0),
		        'large' => substr_replace($this->input->post('imgName'), 'B', -4, 0),
		        'footer_img' => substr_replace($this->input->post('imgName'), '_footer', -4, 0),
		        'date' => $this->input->post('date'),		  
		        'category_id' => $this->input->post('categary')		       
		    );
		    $this->db->insert('image', $data);
		    return $data;
        }
         public function get_lastshot(){
         	$sql="SELECT footer_img FROM dloygtw.image order by id desc limit 1;"; 
         	$query = $this->db->query($sql);
         	$row = $query->row(); 
        	return $row->footer_img;  
         }
        
        
     }   
        
?>