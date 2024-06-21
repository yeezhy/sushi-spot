<?php

function actualite(){
    global $bdd;

    require_once('vue/inc/inc.head.php');
    require_once('vue/inc/inc.header.php');

    if(isset($_GET['id']) && $_GET['id']) {
        $request = $bdd->query("SELECT * FROM actualite WHERE id='".$_GET['id']."'");
        $monActu = $request->fetch();
        monActualite($monActu);
    }else{
        $request = $bdd->query("SELECT * FROM actualite WHERE statut = 1");
        $lstActu = $request->fetchAll();
        lstActualite($lstActu);
    }
    require_once('vue/inc/inc.footer.php');
}
function monActualite($monActu){
    require_once('vue/actualite/v-actualite.php');
}
function lstActualite($lstActu){
    require_once('vue/actualite/v-lstActualite.php');
}