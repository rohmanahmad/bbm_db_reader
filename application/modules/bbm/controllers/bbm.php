<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Bbm extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->load->helper(array('url','html'));
	}
	
	function load_model($modelname='msqlite3'){
		$this->load->model($modelname,'m');
	}
	
	private function load_sqlite3(){
		//BASEPATH didapat dari file index.php (lihat baris teratas)
		$param=array('sqlitedbname'=>BASE_PATH.'/assets/db/bbm.db');
		$this->load->library('sqlite_lib',$param);
	}

	public function index()
	{
		$this->load->view('main/header');
		
	}
	
	function export_messages(){
		$this->load_sqlite3();
		$res=$this->sqlite_lib->export_bbm_message();
		$data=json_decode($res,false);
		foreach($data as $r){
			$messageid=$r->message_id;
			$conversationid=$r->conversation_id;
			$participantid=$r->partisipant_id;
			$message=$r->text_messages;
			$status=$r->status;
			$st=$this->check_duplicate('messages',$messageid);// status '0' jika sudah ada data sebelumnya
			if($st == 0){
				$param=array(
					'message_id'=>$messageid,
					'conversation_id'=>$conversationid,
					'partisipant_id'=>$participantid,
					'text_messages'=>$message,
					'status'=>$status
				);
				$this->m->insert_new_message($param);
			}
		}
		redirect();
	}

	function export_users()
	{
		$this->load_sqlite3();
		$res=$this->sqlite_lib->export_users();
		$i=0;
		$data=json_decode($res,false);
		foreach($data as $r){
			$id=$r->ID;
			$pin=$r->pin;
			$name=$r->name;
			$status=$this->check_duplicate('users',$pin);// status '0' jika sudah ada data sebelumnya
			if($status == 0){
				$param=array('userid'=>$id,'pin'=>$pin,'name'=>$name);
				$this->m->insert_new_user($param);
			}
		}
		redirect();
	}

	function export_participants()
	{
		$this->load_sqlite3();
		$res=$this->sqlite_lib->export_participants();
		$i=0;
		$data=json_decode($res,false);
		foreach($data as $r){
			$partid=$r->partid;
			$userid=$r->userid;
			$converid=$r->converid;
			$status=$this->check_duplicate('participants',$partid);// status '0' jika sudah ada data sebelumnya
			if($status == 0 and !empty($partid) and !empty($userid) and !empty($converid)){
				$param=array(
					'participant_id'=>$partid,
					'conversation_id'=>$converid,
					'user_id'=>$userid
				);
				$this->m->insert_new_participant($param);
			}
		}
		redirect();
	}
	
	function check_duplicate($type,$param){
		$this->load_model();
		if($type=='users'){
			$q=$this->m->select_users(array('pin'=>$param));
		}elseif($type=='messages'){
			$q=$this->m->select_messages(array('message_id'=>$param));
		}else{
			$q=$this->m->select_participants(array('participant_id'=>$param));
		}
		return $q->num_rows();
	}
	
	
	
}
