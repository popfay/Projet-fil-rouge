<?php

require_once("datebase.php");
if( isset($_POST['Pseudo']) &&
    isset($_POST['nom']) && 
    isset($_POST['email']) && 
    isset($_POST['Genre']) && 
    isset($_POST['Age'] ) && 
    isset($_POST['password']) &&
    isset($_POST['Ville']) && 
    isset($_POST['Telephone']) &&
    isset($_POST['Connexion'])){
// Prepare the SQL statement to insert form data into the database
$stmt = $conn->prepare("SELECT COUNT(*)from users WHERE Pseudo=:pseudo");
$stmt->bindValue(':pseudo', $_POST['Pseudo']);
$stmt->execute();
$pseudo=$stmt->fetch();
if ($pseudo[0]==1) {
    $message='Pseudo déjas pris';
} else {
    
    

    $stmt = $conn->prepare("INSERT INTO users (pseudo,nom,email,Genre,Age,Mot_de_passe,Ville,Telephone,Connexion) VALUES (:Pseudo,:nom,:email,:Genre,:Age,:password,:Ville,:Telephone,:Connexion)");

    // Bind the form data to the placeholders in the SQL statement
    $stmt->bindValue(':Pseudo', $_POST['Pseudo']);
    $stmt->bindValue(':nom', $_POST['nom']);
    $stmt->bindValue(':email', $_POST['email']);
    $stmt->bindValue(':Genre', $_POST['Genre']);
    $stmt->bindValue(':Age', $_POST['Age']);
    $stmt->bindValue(':password', $_POST['password']);
    $stmt->bindValue(':Ville', $_POST['Ville']);
    $stmt->bindValue(':Telephone', $_POST['Telephone']);
    $stmt->bindValue(':Connexion', $_POST['Connexion']);

    // Execute the SQL statement to insert the form data into the database
    $stmt->execute();

    session_start();
    $_SESSION["user_id"]=$conn->lastInsertId();

    header('location:PageAcceuil.php');
}
}
require("header.php");

require_once("close.php");
?>


<div class="pageInscription">
<h1>Inscription</h1>
<?php
if(isset($message)){
    echo  $message;
}
    
?>
    <div class="formInscription">
    <form action="" method="POST">
            <div class="inputInscriptionPseudo">

                <label for="Pseudo">Pseudo:</label>
                <input type="text" id="Pseudo" name="Pseudo" value="" required><br>
            </div>
            <div class="inputInscriptionNom">

                <label for="Nom">nom:</label>
                <input type="text" id="nom" name="nom" value="" required><br>
            </div>
            <div class="inputInscriptionGenre">
                <label for="Genre">Genre:</label>
                <input type="text" id="Genre" name="Genre" value="" required><br>
            </div>
            <div class="inputInscriptionAge">
                <label for="Age">Age:</label>
                <input type="text" id="Age" name="Age"value="" required><br>
            </div>
            <div class="inputInscriptionVille">
                <label for="Ville">Ville:</label>
                <input type="text" id="Ville" name="Ville"value="" required><br>
            </div>
            <div class="inputInscriptionTelephone">
                <label for="Telephone">Telephone:</label>
                <input type="text" id="Telephone" name="Telephone"value="" required><br>
            </div>
            <div class="inputInscriptionemail">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email"value="" required><br>
            </div>
            <div class="inputInscriptionMotdepasse">
                <label for="password">Mot de passe:</label>
                <input type="password" id="password" name="password"value="" required><br>
            </div>

            <input type="hidden" name="Connexion" value="1">

            <input type="submit" value="S'inscrire">
    </form>
        
    </div>
</div>

 
