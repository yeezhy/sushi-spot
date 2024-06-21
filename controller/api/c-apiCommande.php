<?php

function APICommande()
{
    global $bdd;
    if ($_SERVER['REQUEST_METHOD'] !=='POST'){
        http_response_code(405);
        die('Méthode non autorisée');
    }

    if(!isset($_POST['HTTP_AUTHORIZATION']) || $_POST['HTTP_AUTHORIZATION'] !== "TGUgdmVudCBzb3VmZmxlIGRvdWNlbWVudCDChCB0csOpdXJzIGxlcyBhcmJyZXMsIGNodWNo"){
        http_response_code(401);
        die('Non autorisé');
    }
    if(isset($_GET['id']) && $_GET['id']){
        AfficherUneCommande($_GET['id']);
    }else{
        AfficherListeCommandes();
    }


}
function AfficherUneCommande($id)
{
    global $bdd;
    $request = $bdd->query("SELECT * FROM commande WHERE id=$id");
    $maCommande = $request->fetch(PDO::FETCH_ASSOC);
    echo json_encode($maCommande);
}

function AfficherListeCommandes()
{
    global $bdd;
    $request = $bdd->query("SELECT * FROM commande");
    $lstCommande = $request->fetchAll(PDO::FETCH_ASSOC);
    echo json_encode($lstCommande);
}
