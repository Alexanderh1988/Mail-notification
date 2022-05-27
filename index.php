<?php
 

//local:
 $con = mysqli_connect('127.0.0.1', 'root', '', 'chs44206_dbhstech');

 
if (mysqli_connect_errno()) {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
   exit();
}
 
 if(isset($_GET['userId'])){  
                
$userId = $_GET['userId'];
   
$query = "SELECT *  FROM maildatabase WHERE userId='".$userId."'";
 
  
 if ($result = mysqli_query($con, $query)) {
 
  while ($row = mysqli_fetch_row($result)) {
  
 $to  = $row[2];
$subject   = $row[3];
 $message   = $row[4];
}
$headers = array(
    'From' => 'noreply@example.com',
    'Reply-To' => 'alex.utfsm@gmail.com',
    'X-Mailer' => 'PHP/' . phpversion());
  
  $headers = implode("\r\n", $headers);
  
mail($to, $subject, $message, $headers);
}
 


mysqli_close($con);
 
}
 
?>