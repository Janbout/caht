<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="rtl">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>My chat</title>
<style type="text/css">
	html{ height:100%;}
	body{
		background-color:#36F;
		padding:0px;
		margin:0px;
		height:100%;}
	#main{
		padding-top:20px;
		padding-right:20px;
		font-size:25px;
		width:1000px;
		height:100%;
		background-color:#FFF;
		margin:auto;
		box-shadow:1px 3px 5px #000000; }

</style>
</head>
<body>
	<div id="main">
    	<form action="chat.php" method="post">
        	<table> <tr> <td> <label>اسم المستخدم:</label> </td>
						 <td> <input type="text" name="name"/> </td>
					</tr>
					<tr>	
						 <td> <label>كلمة المرور:</label> </td>
						 <td> <input type="password" name="pass"/> </td>
					</tr>
					<tr> <td> </td>
						 <td> <input type="submit" value="تسجيل الدخول"/> </td>
					</tr>
            </table>
        </form>
    </div>
</body>
</html>