<?php
$con = mysqli_connect("sql12.freesqldatabase.com","sql12626186","PAClGgQ5Jr", "sql12626186");
	if (!$con)
	{
	die('Could not connect: ' . mysqli_error());
	}
	$username=$_POST['name'];
	$password=$_POST['pass'];
	$q=mysqli_query($con, "SELECT * FROM members where username='$username';");
	if(! $q )
	{
	  die('Could not get data: ' . mysqli_error());
	}
	while($row=mysqli_fetch_array($q)){
		$pass=$row['password'];
		$id=$row['id'];
		if($pass==$password)
		echo "
			<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Transitional//EN' 			'http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd'>
			<html xmlns='http://www.w3.org/1999/xhtml'>
			<head>
			<meta http-equiv='Content-Type' content='text/html; charset=utf-8' />
			<title>chat</title>
			<style type='text/css'>
				html{
					height:100%;
				}
				body{
					background-color:#36F;
					padding:0px;
					margin:0px;
					height:100%;
				}
				#main{
					padding-top:20px;
					padding-right:20px;
					font-size:25px;
					width:1000px;
					height:100%;
					background-color:#FFF;
					margin:auto;
					box-shadow:1px 3px 5px #000000;
				}
				#chat{
					width:100%;
					height:90%;
					overflow-y:scroll;
				}
				
			</style>
			<script src='jquery-1.6.min.js'></script>
			<script type='application/javascript'>
				function starter(){
					window.setInterval(function() {
						$(chat).load('receive.php')
						}, 500);
				}
				 function sendform(){
					$.ajax({
					type: 'POST',
					url: 'send.php',
					data: jQuery('#sendform').serialize(),
					cache: false,
					success:  function(data){
					   /* alert(data); if json obj. alert(JSON.stringify(data));*/
					}
					 });
					 $(message).val('');
				}
			</script>
			</head>
			<body onload='starter()'>
				<div id='main'>
							<div id='chat'>
							   </div>
							   <div id='send'>
									<form id='sendform' onSubmit='sendform();return false'>
										<input type='text' name='message' id='message'/>
										<input name='id' value='$id' type='hidden'/>
									</form>
										<button onClick='sendform()'>Send</button>
							   </div>
				</div>
			</body>
			</html>
		";
		}
?>