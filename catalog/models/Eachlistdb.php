<?php
	class EachlistDb extends CI_Model {

        public function __construct(){
                $this->load->database();
        }
    /*各分類頁籤資料讀取*/    
        public function get_music(){
        	
        
				$this->db->order_by("write_time", "desc");					
				$query = $this->db->get_where('article', array('category_id' => '1'));
				
				return $query->result_array();
		}
        
        
        public function get_music_num(){
        	
        	$this->db->order_by("write_time", "desc"); 
			$query = $this->db->get_where('article', array('category_id' => '1'));
        	return  $query->num_rows();
        }
   
        
        public function get_movie(){
        	
				$this->db->order_by("write_time", "desc"); 
				$query = $this->db->get_where('article', array('category_id' => '2'));
				return $query->result_array();
		}
        
        
        public function get_movie_num(){
        	
        	$this->db->order_by("write_time", "desc"); 
			$query = $this->db->get_where('article', array('category_id' => '2'));
        	return  $query->num_rows();
        }
        public function get_book(){
        	
				$this->db->order_by("write_time", "desc"); 
				$query = $this->db->get_where('article', array('category_id' => '3'));
				return $query->result_array();
		}
        
        
        public function get_book_num(){
        	
        	$this->db->order_by("write_time", "desc"); 
			$query = $this->db->get_where('article', array('category_id' => '3'));
        	return  $query->num_rows();
        }
        
        public function get_think(){
        	
				$this->db->order_by("write_time", "desc"); 
				$query = $this->db->get_where('article', array('category_id' => '4'));
				return $query->result_array();
		}
        
        
        public function get_think_num(){
        	
        	$this->db->order_by("write_time", "desc"); 
			$query = $this->db->get_where('article', array('category_id' => '4'));
        	return  $query->num_rows();
        }
        public function get_game(){
        	
				$this->db->order_by("write_time", "desc"); 
				$query = $this->db->get_where('article', array('category_id' => '6'));
				return $query->result_array();
		}
        
        
        public function get_game_num(){
        	
        	$this->db->order_by("write_time", "desc"); 
			$query = $this->db->get_where('article', array('category_id' => '6'));
        	return  $query->num_rows();
        }
     /*各分類頁籤資料讀取*/        
        
        public function get_articles($id = FALSE){
        

        	if ($id === FALSE)
		        {
		               $this->db->order_by("article_id", "desc"); 
					   $query = $this->db->get('article' ,7);
					   return $query->result_array();
		        }
				
		
    
		        $query = $this->db->get_where('article', array('article_id' => $id));
		        /*print_r($query->row_array());exit;*/
		        return $query->row_array();
		
		}
		public function get_article_list(){
					   $this->db->order_by("article_id", "desc"); 
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
		        'content' => $this->input->post('editor1'),
		        'img_s' => substr_replace($this->input->post('imgName'), 'S', -4, 0),
		        'img_b' => substr_replace($this->input->post('imgName'), 'B', -4, 0)
		    );

		    return $this->db->insert('article', $data);
		}
		
		public function update_articles($id){
			
			$data = array(
		        'title' => $this->input->post('title'),
		        'content' => $this->input->post('editor1'),
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
        
        public function searchrollmusic($search){
        	
        	$sql="select * from article where (title like '%".$search."%' or content like '%".$search."%') and category_id = 1 order by article_id desc";
        	
        	$query = $this->db->query($sql);
			return $query->result_array();
		}
        
        
        public function searchrollmusic_num($search){
        	
        	$sql="select * from article where (title like '%".$search."%' or content like '%".$search."%') and category_id = 1 order by article_id desc";
        	$query = $this->db->query($sql);
        	return  $query->num_rows();
        }
       	public function searchrollmovie($search){
        	
			$sql="select * from article where (title like '%".$search."%' or content like '%".$search."%') and category_id = 2 order by article_id desc";
        	$query = $this->db->query($sql);
			return $query->result_array();
		}
        
        
        public function searchrollmovie_num($search){
        	
        	$sql="select * from article where (title like '%".$search."%' or content like '%".$search."%') and category_id = 2 order by article_id desc";
        	$query = $this->db->query($sql);
        	return  $query->num_rows();
        }
        
        public function searchrollfilm($search){
        	$sql="select * from article where (title like '%".$search."%' or content like '%".$search."%') and (category_id = 1 or category_id = 2) order by article_id desc";
        	$query = $this->db->query($sql);
			return $query->result_array();
        }
         public function searchrollfilm_num($search){
        	
        	$sql="select * from article where (title like '%".$search."%' or content like '%".$search."%') and (category_id = 1 or category_id = 2) order by article_id desc";
        	$query = $this->db->query($sql);
        	return  $query->num_rows();
        }
        
        
        public function searchbook($search){
        	
        	$sql="select * from article where (title like '%".$search."%' or content like '%".$search."%') and category_id = 3 order by article_id desc";
        	
        	$query = $this->db->query($sql);
			return $query->result_array();
		}
        
        
        public function searchbook_num($search){
        	
        	$sql="select * from article where (title like '%".$search."%' or content like '%".$search."%') and category_id = 3 order by article_id desc";
        	$query = $this->db->query($sql);
        	return  $query->num_rows();
        }
        
        public function searchthink($search){
        	
        	$sql="select * from article where (title like '%".$search."%' or content like '%".$search."%') and category_id = 4 order by article_id desc";
        	
        	$query = $this->db->query($sql);
			return $query->result_array();
		}
        
        
        public function searchthink_num($search){
        	
        	$sql="select * from article where (title like '%".$search."%' or content like '%".$search."%') and category_id = 4 order by article_id desc";
        	$query = $this->db->query($sql);
        	return  $query->num_rows();
        }
        
          public function searchgame($search){
        	
        	$sql="select * from article where (title like '%".$search."%' or content like '%".$search."%') and category_id = 6 order by article_id desc";
        	
        	$query = $this->db->query($sql);
			return $query->result_array();
		}
        
        
        public function searchgame_num($search){
        	
        	$sql="select * from article where (title like '%".$search."%' or content like '%".$search."%') and category_id = 6 order by article_id desc";
        	$query = $this->db->query($sql);
        	return  $query->num_rows();
        }
        
        
        
        
        
        
        
        
        
        
        
        public function get_category_year(){
        	
        	$sql="SELECT year(write_time) as Year,count(*) as posts_y FROM dloygtw.article group by year(write_time) order by Year desc;";
        	$query = $this->db->query($sql);
        	return $query->result_array();
        	
        } 
         public function get_category_month(){
        	
        	$sql="SELECT year(write_time) as 'Year',DATE_FORMAT(write_time, '%M') as 'Month',DATE_FORMAT(write_time, '%m') as 'Month_num',count(*) as posts_m FROM dloygtw.article group by month(write_time) ,year(write_time) order by write_time desc;";
    
        	$query = $this->db->query($sql);
        	return $query->result_array();
        	
        } 
        
        
     }   
        
?>