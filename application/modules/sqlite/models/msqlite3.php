<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 
 define('PRE','bbm_');
 
 define('T_USER',PRE.'users');
 define('T_PART',PRE.'participants');
 define('T_MSG',PRE.'messages');

class Msqlite3 extends CI_Model{

 
 function __construct(){
	parent::__construct();
 }
 
 #--------------------- EXPORTS ------------------------#
 
 function select_users($param=''){
	if(empty($param)){
		return $this->db->get(T_USER);
	}else{
		$this->db->where($param);
		return $this->db->get(T_USER);
	}
 }
 
 function select_messages($param=''){
	if(empty($param)){
		return $this->db->get(T_MSG);
	}else{
		$this->db->where($param);
		return $this->db->get(T_MSG);
	}
 }
 
 function select_participants($param=''){
	if(empty($param)){
		return $this->db->get(T_PART);
	}else{
		$this->db->where($param);
		return $this->db->get(T_PART);
	}
 }
 
 function insert_new_user($param=''){
	if(is_array($param)){
		$this->db->insert(T_USER,$param);
	}
 }
 
 function insert_new_message($param=''){
	if(is_array($param)){
		$this->db->insert(T_MSG,$param);
	}
 }
 
 function insert_new_participant($param=''){
	if(is_array($param)){
		$this->db->insert(T_PART,$param);
	}
 }
 
 #---------------------END OF EXPORTS ------------------------#
 
 function select_all($table,$param=''){
 	$this->db->where($param);
 	return $this->db->get($table);
 }
 

}
?>
