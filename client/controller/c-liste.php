<?php

require_once ('model/model.php');

function APIListe(){

    $resultat = api_get_results('liste');

    require('vue/inc/inc.head.php');
    require('vue/inc/inc.header.php');
    require('vue/v-liste.php');
    require('vue/inc/inc.footer.php');
}