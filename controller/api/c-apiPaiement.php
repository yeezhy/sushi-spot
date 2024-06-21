<?php

function APIPaiement()
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
        AfficherUnPaiement($_GET['id']);
    }else{
        AfficherListePaiements();
    }


}
function AfficherUnPaiement($id)
{
    global $bdd;
    $request = $bdd->query("SELECT * FROM commande_paiement WHERE id=$id");
    $monPaiement = $request->fetch(PDO::FETCH_ASSOC);
    echo json_encode($monPaiement);
}

function AfficherListePaiements()
{
    global $bdd;
    $request = $bdd->query("SELECT * FROM commande_paiement");
    $lstPaiement = $request->fetchAll(PDO::FETCH_ASSOC);
    echo json_encode($lstPaiement);
}
