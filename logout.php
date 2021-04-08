<?php 

    session_start(); //initialiser la session
    session_unset(); //desactiver la session
    session_destroy(); //detruire la session
    setcookie('auth', '', time()-1, '/', null, false, true); //detruire le cookie

    header('location: index.php');
    exit();

?>