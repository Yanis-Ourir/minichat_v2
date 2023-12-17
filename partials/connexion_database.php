<?php

try {
    $pdo = new PDO('mysql:host=localhost;dbname=tp_minichat', 'root', '');
} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}
