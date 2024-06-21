<?php

session_start();

date_default_timezone_set("Europe/Paris");

require_once('./controller/c-accueil.php');
require_once('./controller/c-liste.php');
require_once('./controller/c-paiement.php');
require_once('./controller/c-commande.php');

$_SESSION['idClient'] = 1;

if(isset($_GET['page'])&& $_GET['page']){
    switch ($_GET['page']) {
        case "commande": APICommande();break;
        case "paiement":APIPaiement();break;
        default :APIListe();break;
    }
}else accueilClient();