<?php

require_once ('model/model.php');

function APIPaiement(){
    if(isset($_GET['id']) && $_GET['id']) {
        $_GET['id'] = rtrim($_GET['id'], "/");
        paiementSimple($_GET['id']);
    }else{
        paiementListe();
    }
}

function paiementSimple($idPaiement){

    $resultat = api_get_result('paiement',$idPaiement);

    require('vue/inc/inc.head.php');
    require('vue/inc/inc.header.php');
    require('vue/paiement/v-paiement.php');
    require('vue/inc/inc.footer.php');
}

function paiementListe(){

    $resultat = api_get_results('paiement');

    require('vue/inc/inc.head.php');
    require('vue/inc/inc.header.php');
    require('vue/paiement/v-paiement-list.php');
    require('vue/inc/inc.footer.php');
}

