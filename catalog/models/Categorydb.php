<?php
class Categorydb extends CI_Model {
	
		public function __construct(){
                $this->load->database();
        }
        
        
        public function get_searchall($search){
        	
        	$sql="select * from article where (title like '%".$search."%' or content like '%".$search."%') order by article_id desc";
        	
        	$query = $this->db->query($sql);
			return $query->result_array();
        }
          public function get_searchall_num($search){
        	
        	$sql="select * from article where (title like '%".$search."%' or content like '%".$search."%')  order by article_id desc";
        	$query = $this->db->query($sql);
        	return  $query->num_rows();
        }
        
        
        
        
        public function get_category_content(){
              
            $year = $this->input->get('y');
            $month = $this->input->get('m');
            $sql="SELECT * FROM dloygtw.article where year(write_time) = ".$year." and date_format(write_time, '%M') = '".$month."' order by write_time desc";  
   
    		$query = $this->db->query($sql);
        	return $query->result_array();              
        }
        
        public function get_month_content(){
              
            $year = $this->input->get('y');
            $month = $this->input->get('m');
            $sql="SELECT * FROM dloygtw.article where year(write_time) = ".$year." and date_format(write_time, '%m') = '".$month."'";  
         	
    		$query = $this->db->query($sql);
        	return $query->result_array();              
        }
        
         public function get_recently_music(){
         	$sql="SELECT * FROM dloygtw.recently where new_category_id = 1 order by new_id desc limit 1";  
    		$query = $this->db->query($sql);
			return $query->result_array();
         }
         public function get_recently_movie(){
         	$sql="SELECT * FROM dloygtw.recently where new_category_id = 2 order by new_id desc limit 1";      
    		$query = $this->db->query($sql);
			return $query->result_array();
         }
         public function get_recently_book(){
         	$sql="SELECT * FROM dloygtw.recently where new_category_id = 3 order by new_id desc limit 1";      
    		$query = $this->db->query($sql);
			return $query->result_array();
         }
         public function get_recently_think(){
         	$sql="SELECT * FROM dloygtw.recently where new_category_id = 4 order by new_id desc limit 1";   
    		$query = $this->db->query($sql);
			return $query->result_array();
         }
         public function get_recently_programming(){
         	$sql="SELECT * FROM dloygtw.recently where new_category_id = 5 order by new_id desc limit 1";   
    		$query = $this->db->query($sql);
			return $query->result_array();
         }
         public function get_recently_game(){
         	$sql="SELECT * FROM dloygtw.recently where new_category_id = 6 order by new_id desc limit 1";   
    		$query = $this->db->query($sql);
			return $query->result_array();
         }
         
         
         
         
         
         
        public function get_recently_content(){
        	
         $sql="SELECT * FROM dloygtw.recently ";  
    
    		$query = $this->db->query($sql);
			return $query->result_array();
        }
        
        public function get_recently($id = FALSE){
        	if ($id === FALSE)
		        {
		        	
		               $this->db->order_by("new_id", "desc"); 
					   $query = $this->db->get('recently' ,7);
					   return $query->result_array();
		        }

 		 	$query = $this->db->get_where('recently', array('new_id' => $id));
		   
		    return $query->row_array();
         	
		
		}
        public function set_recently(){
        	
		   /* 載入輔助函數
		   $this->load->helper('url');
		    $slug = url_title($this->input->post('title'), 'dash', TRUE);*/

		    $data = array(
		        'title' => $this->input->post('title'),
		        'img' => $this->input->post('imgName'),
		        'youtubeurl' => $this->input->post('youtube'),
		      	'new_category_id' => $this->input->post('categary')
     
		    );

		    return $this->db->insert('recently', $data);
		}
		public function update_recently($id){
			
			$data = array(
		        'title' => $this->input->post('title'),
		        'youtubeurl' => $this->input->post('youtubeurl'),		     
		        'new_category_id' => $this->input->post('categary'),
		        'img' => $this->input->post('imgName')
	
		    );
		    $this->db->where('new_id', $id);
			$this->db->update('recently', $data); 
		    
		}
        public function del_recently($data){
			foreach ($data as $id) {
    			$this->db->delete('recently', array('new_id' => $id)); 
			} 	
		}
       	
        
}

?>