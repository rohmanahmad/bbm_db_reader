<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/css/bootstrap.min.css'); ?>">
<div style="background:#CADBFF;background1:pink;text-align:center;font-size;30px;font-weight:bold;width1:100%;vertical-align:center;padding:20px;border-bottom:1px dotted  #000000;">
<table width="100%">
	<tbody><tr>
		<td width="52px"></td>
		<td width="480px" style="padding-left:10px;">
			<a href="http://192.168.100.215:88/adm/index.php/"><b>CV. Surya Semesta Digital Media</b></a>			<br>
			Jl. Ikan Gurami Perum Little Kyoto Blok C no 1 Malang<br>
			Web : www.suseda.co.id Telp : 0341.488.511 SMS Center : 0852.55.88.2010
		</td>
		<td width="*" style="text-align:right;padding-right:10px;"></td>
		<td width="52" style="text-align:right;">
			</td>
	</tr>
</tbody></table>
</div>
<table border="1" cellspacing="1px" height="30px" align="center" width="100%">
	<tr>
	<?php
          echo "<td>".anchor('bbm/export_messages','ex_messages')."</td> ";
          echo "<td>".anchor('bbm/export_users','ex_users')."</td>";
          echo "<td>".anchor('bbm/export_participants','ex_participants')."</td>";
          echo "<td>".anchor('bbm/views/messages','messages')."</td>";
          echo "<td>".anchor('bbm/views/participants','participants')."</td>";
          echo "<td>".anchor('bbm/views/users','users')."</td>";
        ?>
		<td width=70%></td> 
	</tr>
</table>
