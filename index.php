<?php

session_start();

date_default_timezone_set("Europe/Paris");

require_once('controller/c-accueil.php');
require_once('model/model.php');
require_once('controller/actualite/c-actualite.php');
require_once('controller/produit/c-produit.php');
require_once('controller/panier/c-panier.php');
require_once('controller/commander/c-commander.php');
require_once('controller/paiement/c-paiement.php');
require_once('controller/paiement/c-paiement-retour.php');
require_once('controller/c-repondre_a.php');
require_once('controller/produit/c-test-produit.php');
//require_once('controller/api/c-test-api-commande.php');

require_once('controller/api/c-apiCommande.php');
require_once('controller/api/c-apiPaiement.php');
require_once ('controller/api/c-apiListe.php');

$_SESSION['idClient'] = 1;

$monPanier = verifierPanier($_SESSION['idClient']);

if(isset($_GET['page'])&& $_GET['page']) {
    switch ($_GET['page']) {
        case "actualite": actualite(); break;
        case "produit": produit(); break;
        case "panier": panier(); break;
        case "commander": commander(); break;
        case "paiement": paiement(); break;
        case "annule": paiement_annule();break;
        case "accepte": paiement_accepte();break;
        case "refuse": paiement_refuse();break;
        case "repondreA": repondreA();break;
        case "cTestProduit": testProduit();break;
//        case "testAPI": testApiCommande();break;
        default: accueil(); break;
    }

}else if(isset($_GET['pageAPI'])&& $_GET['pageAPI']){
    switch ($_GET['pageAPI']) {
        case "liste":APIListe();break;
        case "commande":APICommande();break;
        case "paiement":APIPaiement();break;
        default :accueil();break;
    }

}else accueil();
