<?php if(!isset($q))exit ;?>
<table class="table">
 <tr>
	<?php 
	if($type=="messages"){
		$arr_col=array('ID','Pin','Part Id','Conv ID','Message','Status');
		foreach($arr_col as $c){
			echo '<th>'.$c.'</th>';
		}
	}else{
		foreach($col->result() as $c){
			echo '<th>'.$c->Field.'</th>';
		}
	}
	?>
 </tr>
 <tr>
 <?php 
	foreach($q->result() as $r){
	#print_r($r);
	 if($type == "messages"){
		$id=$r->message_id;
		$convid=$r->conversation_id;
		$name=$r->name;
		$partid=$r->participant_id;
		$message=$r->text_messages;
		$status=$r->status;
	
	  if(empty($name)){
		$name="<b>Me</b>";
	  }

		echo '<td>'.$id.'</td>';
		echo '<td>'.$name.'</td>';
		echo '<td>'.$partid.'</td>';
		echo '<td>'.$convid.'</td>';
		echo '<td>'.$message.'</td>';
		echo '<td>'.$status.'</td>';
	  
	 }elseif($type == "participants"){
		$id=$r->participant_id;
		$convid=$r->conversation_id;
		$uid=$r->user_id;
		
		echo '<td>'.$id.'</td>';
		echo '<td>'.$convid.'</td>';
		echo '<td>'.$uid.'</td>';
	 }elseif($type == "users"){
		$id=$r->userid;
		$pin=$r->pin;
		$name=$r->name;
		$status=$r->status;
		
		echo '<td>'.$id.'</td>';
		echo '<td>'.$pin.'</td>';
		echo '<td>'.$name.'</td>';
		echo '<td>'.$status.'</td>';
	 }
 ?>
 </tr>
 <?php } ?>
</table>