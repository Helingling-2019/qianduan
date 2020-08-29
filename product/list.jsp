<?php
   $connect = @mysqli_connect("127.0.0.1","root","") or die("数据库连接失败");
   $choose_db = mysqli_select_db($connect,'products') or die("没有成功连接到指定数据库");
   mysqli_query($connect,'set names utf8');
   $num = isset($_POST['num'])?$_POST['num']:0;
   
   $sql = "select * from list order by ID desc limit " . $num . ",2";
 //  echo $sql;
   $result = mysqli_query($connect,$sql);
   $array = array();
   while($info = mysqli_fetch_array($result)){
	   array_push($array,$info);
   }
   $arr = array('data'=>$array);
   echo json_encode($arr);
?>
