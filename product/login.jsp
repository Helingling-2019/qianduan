<?php
   $connect = @mysqli_connect("127.0.0.1","root","") or die('数据库连接失败');
   $choose_db = mysqli_select_db($connect,'products') or die('没有成功连接到指定的数据库');
   mysqli_query($connect,'set names utf8');
   $username = $_GET['username'];
   $password = $_GET['password'];
   $sql = "insert into user (ID,username,password) values (null,'$username','$password')";
  //echo $sql;
   $result = mysqli_query($connect,$sql);
    $array = array();
   
	   array_push($array,$result);

   $arr = array('data'=>$array);
   echo json_encode($arr);
?>