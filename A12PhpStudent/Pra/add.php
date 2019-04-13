<?php
  $conn=mysqli_connect("127.0.0.1", "newuser", "password", "mydb");

  if(isset($_POST["submit"])){
    $name=$_POST["name"];
    $rollno=$_POST["rollno"];
    $dept=$_POST["dept"];

    $query="insert into student values($rollno, '$name', '$dept')";

    $result=mysqli_query($conn, $query);

    if($result){
      echo "Insertion successful";
    }
    else{
      echo "Error in insertion";
    }
  }
 ?>
