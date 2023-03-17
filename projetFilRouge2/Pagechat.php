<?php
$messages="";
// Demarage de la session
session_start();

// Verification Connextion Utilisateur
if (!isset($_SESSION['user_id'])) {
    // header("Location: PageAcceuil.php");
    $_SESSION['user_id'] = 23;
    //exit;
}
//Connextion base de donée
include("datebase.php");

// Recuperation Message de l'utilisateur
$stmt = $conn->prepare('SELECT * FROM users WHERE id = :id');
$stmt->bindParam(':id', $_SESSION['user_id']);
$stmt->execute();
$user = $stmt->fetch();

// Verification Message 
if (isset($_POST['message'])) {
    // Inserer Message Base de donée
    $stmt = $conn->prepare('INSERT INTO discussions (nom,date, Conversation) VALUES (:nom,NOW(), :message)');
    $stmt->bindParam(':nom', $user['nom']);
    $stmt->bindParam(':message', $_POST['message']);
    
    $stmt->execute();
}

// Recuperation Message de la Base de donée
 

 $stmt = $conn->query('SELECT * FROM `discussions`');
 //$stmt=$conn->query("INSERT INTO users")("id_Users, message")
 $messages = $stmt->fetchAll();
 
 require("header.php");
?>
<!-- Interface Chat  -->
<div class="Pagechat">
    <h1>Message</h1>
    <form action="" method="post">
        <input type="text" name="message" placeholder="Votre Message">
        <button type="submit">Envoyer</button>
    </form>
    <?php echo $user['nom']; ?>
    <?php foreach ($messages as $message): ?>
        <div class="message">
            <strong><?php echo $message['nom']; ?>:</strong>
            <?php echo $message['Conversation'];
            
            ?>
        </div>
    <?php endforeach; ?>
    <?php
        include("Footer.php");
    ?>
</div>

<script>
    // Mise a jour chat en temps reel avec JS
    setInterval(function() {
        $.ajax({
            url: 'get_messages.php',
            success: function(messages) {
                $('#chat').html(messages);
            }
        });
    }, 1000);
</script>




