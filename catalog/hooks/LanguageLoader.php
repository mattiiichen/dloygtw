<?php
class LanguageLoader {
	
    	function initialize() {
	        $ci =& get_instance();
	        $ci->load->helper('language');
			$ci->load->library('session');
	        $site_lang = $ci->session->userdata('site_lang');
	        if ($site_lang) {
	            $ci->lang->load('home',$ci->session->userdata('site_lang'));
	            $ci->lang->load('home',$ci->session->userdata('site_lang'));
	            $ci->lang->load('list_book',$ci->session->userdata('site_lang'));
	            $ci->lang->load('list_game',$ci->session->userdata('site_lang'));
	            $ci->lang->load('list_image',$ci->session->userdata('site_lang'));
	            $ci->lang->load('list_rollfilm',$ci->session->userdata('site_lang'));
	            $ci->lang->load('list_think',$ci->session->userdata('site_lang'));
	            $ci->lang->load('view_search',$ci->session->userdata('site_lang'));
	            $ci->lang->load('category_search',$ci->session->userdata('site_lang'));
	        } else {
	            $ci->lang->load('home','origin');
	            $ci->lang->load('list_book','origin');
	            $ci->lang->load('list_game','origin');
	            $ci->lang->load('list_image','origin');
	            $ci->lang->load('list_rollfilm','origin');
	            $ci->lang->load('list_think','origin');
	            $ci->lang->load('view_search','origin');
	            $ci->lang->load('category_search','origin');
	        }
    	}
}

?>