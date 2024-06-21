<?php

function APICommande(){
    if(isset($_GET['id']) && $_GET['id']) {
        $_GET['id'] = rtrim($_GET['id'], "/");
        commandeSimple($_GET['id']);
    }else{
        commandeListe();
    }
}

function commandeSimple($idCommande) {

    $resultat = api_get_result('commande', $idCommande);

    require('vue/inc/inc.head.php');
    require('vue/inc/inc.header.php');
    require('vue/commande/v-commande.php');
    require('vue/inc/inc.footer.php');
}

function commandeListe(){

    $resultat = api_get_results('commande');

    require('vue/inc/inc.head.php');
    require('vue/inc/inc.header.php');
    require('vue/commande/v-commande-list.php');
    require('vue/inc/inc.footer.php');
}

