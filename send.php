<?php
$con = mysqli_connect("sql12.freesqldatabase.com","sql12626186","PAClGgQ5Jr", "sql12626186");
if (!$con)
{die('Could not connect: ' . mysqli_error());}
$message=$_POST['message'];
$id=$_POST['id'];
$username;
$q=mysqli_query($con, "SELECT username FROM members where id='$id';");
while($row=mysqli_fetch_array($q))
{
	$username=$row['username'];
}
mysqli_query($con, "insert into messages (mid,uid,username,message) values(null,'$id','$username','$message');");
?>