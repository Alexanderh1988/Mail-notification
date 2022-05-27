<?php
  
 
 if(isset($_GET['mail'])){  
                
$userId = $_GET['mail'];
 
}

  $header = "From:abc@somedomain.com \r\n";
         $header .= "Cc:alex.utfsm@gmail.com \r\n";
         $header .= "MIME-Version: 1.0\r\n";
         $header .= "Content-type: text/html\r\n";
  

mail($userId, "subject","message",$header );


 
?>