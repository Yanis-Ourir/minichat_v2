<?php

require_once(__DIR__ . '/../partials/connexion_database.php');


try {
    $allMessage = $pdo->prepare('SELECT * FROM message JOIN user WHERE user.id = message.user_id');
    $allMessage->execute();
    $messages = $allMessage->fetchAll();

 


        foreach ($messages as $message) {
            echo '<div id="" class="card mb-3">
            <div class="card-body">
                <h5 class="card-title" style="color:' . $message['color'] . ' ">' . $message['pseudo'] . '</h5>
                <p class="card-text">' . $message['content'] . '</p>
                <p class="card-text"><small class="text-muted">' . $message['created_at'] . '</small></p>
            </div>
          </div>';
        }

        
} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}