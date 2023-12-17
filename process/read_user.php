<?php

require_once('./partials/connexion_database.php');

try {
    $allUsers = $pdo->prepare('SELECT * FROM user');
    $allUsers->execute();
    $users = $allUsers->fetchAll();
} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}