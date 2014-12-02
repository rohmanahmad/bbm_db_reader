<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 

class Bbm_model extends CI_Model{
 function __construct(){
	parent::__construct();
 }
 
 function select_users($param=''){
	if(empty($param)){
		return $this->db->get('bbm_users');
	}else{
		$this->db->where($param);
		return $this->db->get('bbm_users');
	}
 }
 
 function select_messages($param=''){
	if(empty($param)){
		return $this->db->get('bbm_messages');
	}else{
		$this->db->where($param);
		return $this->db->get('bbm_messages');
	}
 }
 
 function select_participants($param=''){
	if(empty($param)){
		return $this->db->get('bbm_participants');
	}else{
		$this->db->where($param);
		return $this->db->get('bbm_participants');
	}
 }
 
 function insert_new_user($param=''){
	if(is_array($param)){
		$this->db->insert('bbm_users',$param);
	}
 }
 
 function insert_new_message($param=''){
	if(is_array($param)){
		$this->db->insert('bbm_messages',$param);
	}
 }
 
 function insert_new_participant($param=''){
	if(is_array($param)){
		$this->db->insert('bbm_participants',$param);
	}
 }

}
?>