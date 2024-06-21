<?php

require_once('model/model.php');

function paiement()
{
    global $bdd;
    global $idUser;


    $infoCommande = $bdd->query("SELECT * FROM commande WHERE id=(SELECT max(id) FROM commande)");
    $infoCommande = $infoCommande->fetch(PDO::FETCH_ASSOC);

    if ($infoCommande) {

        $nbProduit = $bdd->query("SELECT COUNT(*) FROM commande_produit WHERE id_commande=" . $infoCommande['id']);
        $nbProduit = $nbProduit->fetchColumn();


        $totalCommande = $bdd->query("SELECT SUM(prix_unitaire * taux * quantite) FROM commande_produit,tva WHERE id_commande=" . $infoCommande['id'] . " AND commande_produit.id_tva = tva.id");
        $totalCommande = round($totalCommande->fetchColumn(), 2);
        $totalCommande = $totalCommande * 100;

        $pbx_site = '3277512';
        $pbx_rang = '1';
        $pbx_identifiant = '38023694';
        $pbx_cmd = '24gp93-' . $infoCommande['id'];
        $pbx_porteur = $infoCommande['email'];
        $pbx_total = $totalCommande;
        $pbx_nb_produit = $nbProduit;
        $pbx_prenom_fact = $infoCommande['prenom'];
        $pbx_nom_fact = $infoCommande['nom'];
        $pbx_adresse1_fact = $infoCommande['adresse'];
        $pbx_adresse2_fact = $infoCommande['complement'];
        $pbx_zipcode_fact = $infoCommande['code_postal'];
        $pbx_city_fact = $infoCommande['ville'];
        $pbx_country_fact = 250;

        $pbx_total = str_replace(",", "", $pbx_total);
        $pbx_total = str_replace(".", "", $pbx_total);


        $pbx_effectue = 'https://b2-gp93.kevinpecro.info/accepte/';
        $pbx_annule = 'https://b2-gp93.kevinpecro.info/annule';
        $pbx_refuse = 'https://b2-gp93.kevinpecro.info/refuse';
        $pbx_repondre_a = 'https://b2-gp93.kevinpecro.info/repondreA/';

        $hmackey = 'A2E2306455B5E81E9A55ED3A725E4AA2BBBDE02A8E5F0A49B17CA1FC3F06BD6AA75BC66A84AD871864936938B2E834EC0029236F8E0C4D71AE884DE97CFC0EEC';


        $dateTime = date("c");
        $idUnique = uniqid();
        $msg = "PBX_SITE=3277512".
            "&PBX_RANG=1".
            "&PBX_IDENTIFIANT=38023694".
            "&PBX_SOURCE=RWD".
            "&PBX_TOTAL=".$pbx_total.
            "&PBX_DEVISE=978".
            "&PBX_CMD=".$pbx_cmd.
            "&PBX_PORTEUR=". $pbx_porteur.
            "&PBX_RETOUR=Mt:M;Ref:R;TypeC:C;numC:j;dateP:W;Auto:A;Erreur:E".
            "&PBX_EFFECTUE=".$pbx_effectue.
            "&PBX_ANNULE=".$pbx_annule.
            "&PBX_REFUSE=".$pbx_refuse.
            "&PBX_REPONDRE_A=".$pbx_repondre_a.
            "&PBX_RUF1=POST".
            "&PBX_HASH=SHA512".
            "&PBX_TIME=".$dateTime;

        $keyTest = "A2E2306455B5E81E9A55ED3A725E4AA2BBBDE02A8E5F0A49B17CA1FC3F06BD6AA75BC66A84AD871864936938B2E834EC0029236F8E0C4D71AE884DE97CFC0EEC";

        $binKey = pack("H*", $keyTest);
        $hmac = strtoupper(hash_hmac('sha512', $msg, $binKey));



        require('vue/inc/inc.header.php');
        require('vue/inc/inc.head.php');
        require('vue/paiement/v-paiement.php');
        require('vue/inc/inc.footer.php');
    }

}
