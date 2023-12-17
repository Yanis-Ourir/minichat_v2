<?php

use Colors\RandomColor;
require_once('../vendor/mistic100/randomcolor/src/RandomColor.php');
require_once('../partials/connexion_database.php');

date_default_timezone_set('Europe/Paris');
$date = date('Y-m-d H:i:s', time());
setcookie('Pseudo', $_POST['pseudo'], time() + 3600);
$color = RandomColor::one();

try {
    $findUser = $pdo->prepare("SELECT * FROM user WHERE pseudo = ?");
    $findUser->execute([$_POST['pseudo']]);
    $existingUser = $findUser->fetch();

    if($existingUser) {
        $userId = $existingUser['id'];
    } else {
        $addUser = $pdo->prepare("INSERT INTO user (pseudo, created_at, color) VALUES (?, ?, ?)");
        $addUser->execute([$_POST['pseudo'], $date, $color]);
        $userId = $pdo->lastInsertId();
    }


    $addMessage = $pdo->prepare("INSERT INTO message (content, created_at, ip_adress, user_id) VALUES (?, ?, ?, ?)");
    $addMessage->execute([$_POST['message'], $date,  $_SERVER['REMOTE_ADDR'], $userId]);
    header('Location: ../index.php');
} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}

try {
    
} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}

