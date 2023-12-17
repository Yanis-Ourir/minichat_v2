<?php

require_once('./partials/connexion_database.php');
require_once('./process/read_user.php');

if (isset($_COOKIE['pseudo'])) {
    $pseudo = $_COOKIE['pseudo'];
} else {
    $pseudo = '';
}


?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tp MiniChat</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>

<body>
    <nav class="navbar bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand text-light" href="#">TP Mini-chat</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="offcanvas offcanvas-end bg-dark text-light" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
                <div class="offcanvas-header">
                    <h5 class="offcanvas-title" id="offcanvasNavbarLabel">Personnes :</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                </div>
                <div class="offcanvas-body bg-dark">
                    <?php
                    foreach ($users as $user) {
                        echo "<div class=''>
                                <p class='text-light'>" . $user['pseudo'] . "</p>
                            </div>
                                ";
                    }
                    ?>
                </div>
            </div>
        </div>
    </nav>
    <div id="messages-container">
        
    </div>
        <footer>
            <form action="./process/create_message.php" method="post" class="bg-dark text-light d-flex align-items-center justify-content-center">
                <div class="mb-3 p-2">
                    <label for="pseudo" class="form-label">Pseudo</label>
                    <input type="text" name="pseudo" class="form-control" id="pseudo" aria-describedby="pseudoHelp" value="<?php $pseudo ?>">
                </div>
                <div class="mb-3 p-2">
                    <label for="message" class="form-label">Message</label>
                    <input type="textarea" class="form-control" id="message" name="message">
                </div>
                <button type="submit" class="btn btn-primary p-2 mt-3">Submit</button>
            </form>
        </footer>

        <script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
        <script src="./main.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>

</html>