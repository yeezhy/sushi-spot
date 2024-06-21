<?php

function APIListe()
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

    $lstApi = array(
        array(
            "url" => "/api/liste",
            "param" => "",
            "method" => "POST",
            "statut" => 1
        ),

        array(
            "url" => "/api/commande",
            "param" => "",
            "method" => "POST",
            "statut" => 1
        ),

        array(
            "url" => "/api/commande",
            "param" => "idCommande",
            "method" => "POST",
            "statut" => 1
        ),

        array(
            "url" => "/api/paiement",
            "param" => "",
            "method" => "POST",
            "statut" => 1
        ),

        array(
            "url" => "/api/paiement",
            "param" => "idPaiement",
            "method" => "POST",
            "statut" => 1
        ),
    );

    echo json_encode($lstApi);
}