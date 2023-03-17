<?php
$servername = "localhost"; // Nom serveur base de donée
$username = "ApplicationMobile"; // Nom base de donée 
$password = "ApplicationMobile"; // Mot de passe base de donée 
$dbname="ApplicationMobile";
try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
  echo "Connextion Etablished";
} catch(PDOException $e) {
  echo "Error creating table: " . $e->getMessage();
}
?>
