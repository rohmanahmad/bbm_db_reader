<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Bbm extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->load->helper(array('url','html'));
	}
	
	function load_header(){
		$this->load->view('main/header');
	}
	
	#--------------------- UPLOAD --------------------------------#
	function upload_file(){
		$config['upload_path'] = BASE_PATH.'/assets/db/';
		$config['file_name']  = 'bbm_'.date('dymgis');
		$config['allowed_types'] = '*';

		$this->load->library('upload', $config);
		if($this->upload->do_upload('uploaded_file')){
			print_r($this->upload->data());
			$this->load_model();
			$this->m->upload_filename($config['file_name']);
		}else{
			print_r($this->upload->display_errors());
		}
		
	}
	
	function test_upload(){
		$this->load->helper('form');
		echo form_open_multipart('bbm/upload_file');

		echo '<input type="file" name="uploaded_file" size="20" />';

		echo '<input type="submit" value="upload" />';

		echo '</form>';
	}
	#--------------------- END OF UPLOAD --------------------------------#
	
	
	#--------------------- EXPORTS --------------------------------#
	
	function load_model($modelname='bbm_model'){
		$this->load->model($modelname,'m');
	}
	
	private function load_sqlite3(){
		//BASEPATH didapat dari file index.php (lihat baris teratas)
		$this->load_model();
		$filename=$this->m->select_file_for_export().'.db';
		$param=array('sqlitedbname'=>BASE_PATH.'/assets/db/'.$filename);
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
			$participantid=$r->participant_id;
			$message=$r->text_messages;
			$status=$r->status;
			$st=$this->check_duplicate('messages',$messageid);// status '0' jika sudah ada data sebelumnya
			if($st == 0){
				$param=array(
					'message_id'=>$messageid,
					'conversation_id'=>$conversationid,
					'participant_id'=>$participantid,
					'text_messages'=>$message,
					'status'=>$status
				);
				$this->m->insert_new_message($param);
			}
		}
		#redirect();
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
		#redirect();
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
		#redirect();
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
	
	#-------------------------- END OF EXPORTS ------------------------------#
	
	function views($type='messages'){
	 $this->load_model();
	 $this->load_header();
	  if ($type == "users"){
	  	$table="users";
	  }elseif($type == "participants"){
	  	$table="participants";
	  }else{
	  	$table="messages";
	  }
		$data['type']=$table;
	  	$data['q']=$this->m->select_all($table,array());
	  	$data['col']=$this->m->select_coloum_name($table);
		$this->load->view('views',$data);
	}
	
	
	
}
