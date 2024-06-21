<?php


function paiement_accepte()
{
    require('vue/inc/inc.header.php');
    require('vue/inc/inc.head.php');
    require('vue/paiement/v-accepte.php');
    require('vue/inc/inc.footer.php');
}

function paiement_refuse()
{
    require('vue/inc/inc.header.php');
    require('vue/inc/inc.head.php');
    require('vue/paiement/v-refuse.php');
    require('vue/inc/inc.footer.php');
}

function paiement_annule()
{
    require('vue/inc/inc.header.php');
    require('vue/inc/inc.head.php');
    require('vue/paiement/v-annule.php');
    require('vue/inc/inc.footer.php');
}