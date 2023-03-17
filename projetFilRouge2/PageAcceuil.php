<?php
session_start();
echo $_SESSION["user_id"];
require("header.php");
?>

<div class="pageAcceuil">
    <form action="" method="POST">
        <div class="Icon-head">
            <a href="Pagesetting.php "><img src="Icons/settings.svg"></a>
            <a href="Pagerecherche.php"><img src="Icons/search.svg" ></a>
        </div>
    </form>
    <div id="Bienvenue">
        <h1>Bienvenue</h1>
    </div>
    <div class="NomjeuxPageAcceuil">
        <h2>Jeux</h2>
    </div>
        <a href="PageJeux.php"><img src="angrybirds.png" alt="angrybirds"id="Angrybird"></a>
    
    <div class="NomAmisPageAcceuil">
        <h2>Amis</h2>
    </div>
        <a href="PageAmis.php"><img src="amis.webp"alt="amis"id="Amis"></a>
        <?php
        include('Footer.php');
    ?>
    
</div>
