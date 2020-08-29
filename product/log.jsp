<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
</head>

<body>
   <form action="" method="post">
     <table width="200" border="1">
  <tr>
    <td colspan="2">欢迎注册本网站</td>
  </tr>
  <tr>
    <td>用户名：</td>
    <td><input type="text" name="username" /></td>
  </tr>
  <tr>
    <td>密码：</td>
    <td><input type="text" name="password" /></td>
  </tr>
  <tr>
    <td colspan="2"><input type="submit" name="sub" value="提交" /></td>
  </tr>
</table>

   </form>
   <?php
   if(isset($_POST['sub'])){
   $connect = @mysqli_connect("127.0.0.1","root","") or die('数据库连接失败');
   $choose_db = mysqli_select_db($connect,'products') or die('没有成功连接到指定的数据库');
   mysqli_query($connect,'set names utf8');
   $username = $_POST['username'];
   $password = $_POST['password'];
   $sql = "insert into user (ID,username,password) values (null,'$username','$password')";
  // echo $sql;
   $result = mysqli_query($connect,$sql);
   if($result){
	 echo "数据插入成功";  
   }else{
	 echo "数据插入失败";  
	  }
   }
?>
</body>
</html>
