<?php
	class HomeDb extends CI_Model {

        public function __construct(){
                $this->load->database();
        }
        
        
        public function get_articles($id = FALSE){
        if ($id === FALSE)//首頁用的
		        {		        	
		               $this->db->order_by("article_id", "desc"); 
					   $query = $this->db->get('article' ,7);
					   return $query->result_array();
		        }
		        $query = $this->db->get_where('article', array('article_id' => $id));
		        $row = $query->row_array(); 
		     
		       if($row['category_id']== 1){
			   		$category="category_id = 1";
			   }elseif($row['category_id']== 2){
			   		$category="category_id = 2";
			   }elseif($row['category_id']== 3){
			   		$category="category_id = 3";
			   }elseif($row['category_id']== 4){
			   		$category="category_id = 4";
			   }elseif($row['category_id']== 5){
			   		$category="category_id = 5";
			   }else{
			   		$category="category_id = 6";
			   };
		  
 $sql="SELECT * FROM dloygtw.article where article_id = ".$id." union (SELECT * FROM (SELECT * FROM dloygtw.article WHERE (".$category.") and article_id < ".$id." ORDER BY article_id DESC LIMIT 1) a) UNION (SELECT * FROM (SELECT * FROM dloygtw.article WHERE (".$category.") and article_id > ".$id." ORDER BY article_id ASC limit 1) b) ORDER BY article_id";  

         	$query = $this->db->query($sql);
        	return $query->result_array();      		
		}
		
		public function get_footernews(){
			$sql="SELECT a.* FROM dloygtw.article a INNER JOIN ( SELECT category_id, MAX(article_id) AS max_id FROM dloygtw.article GROUP BY category_id) AS b ON a.category_id = b.category_id AND a.article_id = b.max_id";  
         	$query = $this->db->query($sql);
        	return $query->result_array();    
		}
		
		public function get_article_list(){
					   $this->db->order_by("article_id", "desc"); 
					   $this->db->join('category_description', 'article.category_id = category_description.category_id', 'left');
					   $query = $this->db->get('article');
					   return $query->result_array();
		}
		
		public function get_lastArticle(){
			
			
			$this->db->select_max('article_id');
			$query = $this->db->get('article');			
  			$row = $query->row();
  			return $row->article_id;
			
		}
		
		
			
        public function set_articles(){
        	
		   /* 載入輔助函數
		   $this->load->helper('url');
		    $slug = url_title($this->input->post('title'), 'dash', TRUE);*/

		    $data = array(
		        'title' => $this->input->post('title'),
		        'subheading' => $this->input->post('subtitle'),
		        'engTitle' => $this->input->post('engTitle'),
		        'content' => $this->input->post('editor1'),
		        'category_id' => $this->input->post('categary'),
		        'write_time' => $this->input->post('dtpicker'),
		        'img_s' => substr_replace($this->input->post('imgName'), 'S', -4, 0),
		        'img_b' => substr_replace($this->input->post('imgName'), 'B', -4, 0)
		    );

		    return $this->db->insert('article', $data);
		}
		
		public function update_articles($id){
			
			$data = array(
		        'title' => $this->input->post('title'),
		        'subheading' => $this->input->post('subtitle'),
		        'engTitle' => $this->input->post('engTitle'),
		        'content' => $this->input->post('editor1'),
		         'category_id' => $this->input->post('categary'),
		         'write_time' => $this->input->post('dtpicker'),
		        'img_s' => substr_replace($this->input->post('imgName'), 'S', -4, 0),
		        'img_b' => substr_replace($this->input->post('imgName'), 'B', -4, 0)
		    );
		    $this->db->where('article_id', $id);
			$this->db->update('article', $data); 
		    
		}
		
		public function del_articles($data){
			foreach ($data as $id) {
    			$this->db->delete('article', array('article_id' => $id)); 
			} 	
		}
        
     }   
        
?>