<?php
	class Bluelagoon extends CI_Model {

        public function __construct(){
                $this->load->database();
        }
        
        
        public function get_articles($id = FALSE){
        

        if ($id === FALSE)
		        {
		        	
		               $this->db->order_by("article_id", "desc"); 
					   $query = $this->db->get('article' ,7);
					   return $query->result_array();
		        }

 		 $query = $this->db->get_where('article', array('article_id' => $id));
		   
		        return $query->row_array();
         	
		
		}
		

        
     }   
        
?>