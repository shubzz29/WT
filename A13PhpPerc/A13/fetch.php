<?php
  $conn=mysqli_connect("localhost", "newuser", "password", "mydb");

  $query="select * from student order by student_rollno";

  $result=mysqli_query($conn, $query);

 ?>
<table>
  <tr>
    <th>Roll No</th>
    <th>Name</th>
    <th>Department</th>
  </tr>
  <?php
    if(mysqli_num_rows($result)>0){
      while($row=mysqli_fetch_assoc($result)){
        echo "<tr><td>".$row["student_rollno"]."</td><td>".$row["student_name"]."</td><td>".$row["student_dept"]."</td></tr>";
      }
    }
   ?>
</table>
