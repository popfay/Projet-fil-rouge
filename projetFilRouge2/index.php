<?php


require_once("datebase.php");
if( isset($_POST['Pseudo']) &&
    isset($_POST['password']) ){
   
// Prepare the SQL statement to insert form data into the database
$stmt = $conn->prepare("SELECT * FROM `users` WHERE `Pseudo`=:Pseudo and `Mot_de_passe`=:password");

// Bind the form data to the placeholders in the SQL statement
$stmt->bindValue(':Pseudo', $_POST['Pseudo']);
$stmt->bindValue(':password', $_POST['password']);


// Execute the SQL statement to insert the form data into the database
$stmt->execute();

header('location:PageAcceuil.php');

    }
require("header.php");


?>
<body>
    

        <div class="pageConnexion">
            <h1>Connexion</h1>
        <div class="formPageconnextion">
            <form action="" method="POST">
                <div class="forminput">
                    <label for="Pseudo">Pseudo:</label>
                    <input type="text" id="Pseudo" name="Pseudo" value="Max" required><br>
                </div>

                <label for="password">Motdepasse:</label>
                <input type="password" id="password" name="password"value="" required><br>
                <input type="submit" value="Connexion"id="bouttonConnexion"></id>
                
            </form>
        </div>
        <div class="RedirectionMdp">
            <p>
                <a href="Pageinscription.php">
                inscription</a>
            </p>
        </div>
            <div id="Transition">
                <p>Ou</p>
            </div>
            <div class="API">
                <a href=""><img src="Icons/steam.svg">Steam</a>
                <a href=""><img src="Icons/XBOX.svg">XBOX</a>
                <a href=""><img src="Icons/Psstore.svg">Ps-store</a>
            </div>
        </div>

</body>




