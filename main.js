$(document).ready(function () {
    function updateMessages() {
    
        $.ajax({
            url: 'process/read_message.php', 
            type: 'GET',
            success: function (data) {
              
                $('#messages-container').html(data);
            }
        });
    }

    setInterval(updateMessages, 3000);
});

$(document).ready(function () {
    // Interceptez le formulaire de message pour l'envoyer via AJAX
    $('form').submit(function (e) {
        e.preventDefault();  // Empêchez le formulaire de se soumettre normalement

        // Faites une requête AJAX pour envoyer le message
        $.ajax({
            url: 'process/create_message.php',
            type: 'POST',
            data: $(this).serialize(),  // Sérialisez les données du formulaire
            success: function (data) {
                // Mettez à jour la section des messages avec les nouveaux messages après l'envoi
                console.log(data);
            }
        });
    });
});