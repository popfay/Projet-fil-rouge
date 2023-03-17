<?php
$servername = "localhost"; // Nom base de donée local
$username = "applicationmobile"; // Nom base de donée 
$password = "applicationmobile"; // Mot de passe base de donée 
$dbname="applicationmobile";
try {
    $conn = new PDO("mysql:host=$servername;dbname=applicationmobile", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
  
} catch(PDOException $e) {
  echo "Error creating table: " . $e->getMessage();
}
?>


  