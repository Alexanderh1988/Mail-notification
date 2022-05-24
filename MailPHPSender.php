<?php
 
//local:
$db = mysqli_connect('127.0.0.1', 'root', '', 'chs44206_dbhstech');
 
// session_start();  //22

if (mysql_close()qli_connect_error()) {
    echo 'Database connection failed with following errors: ' . mysqli_connect_error();
    die();
}

  // if(isset($_GET['delete'])){  

 if(isset($_GET['user'])){  
                
$user = $_GET['userId'];

$sql = "SELECT * FROM `mailList` WHERE notificationUser=$userId";

$featured = $db->query($sql);
$total = 0;
$k = 0;

while ($data = mysqli_fetch_assoc($featured)):

    //$id = $dato['id'];
    $asunto = $data['asunto'];
    $message = $data['message'];
    $to = $data['to'];
       

endwhile;


$to      = 'nobody@example.com';
$subject = 'the subject';
$message = 'hello';
$headers = array(
    'From' => 'fiscalia@skic.com',
    'Reply-To' => 'alex.utfsm@gmail.com',
    'X-Mailer' => 'PHP/' . phpversion()
);

mail($to, $subject, $message, $headers);


               }
?>