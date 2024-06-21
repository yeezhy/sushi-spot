<?php

function panier(){
    global $bdd;

    $monPanier = verifierPanier($_SESSION['idClient']);
    $totalPanier = 0;
    $totalProduit = 0;
    $idPanier = $monPanier['id'];

    if(isset($_POST['supprimer']) && $_POST['supprimer']) {
        supprimerProduitPanier($_POST['id']);
    }

    if ($monPanier){
        $request = $bdd->query("SELECT produit.*, panier_produit.*, tva.taux FROM produit, panier_produit, tva
         WHERE id_produit = produit.id AND tva.id = produit.id_tva AND id_panier = $idPanier");
        $lstProduitPanier = $request->fetchAll(PDO::FETCH_ASSOC);
    }


    require_once('vue/inc/inc.head.php');
    require_once('vue/inc/inc.header.php');
    require_once('vue/panier/v-panier.php');
    require_once('vue/inc/inc.footer.php');
}
function verifierPanier($idClient){
    global $bdd;

    $request = $bdd->query("SELECT * FROM panier WHERE id_client = $idClient");
    $unPanier = $request->fetch(PDO::FETCH_ASSOC);

    if ($unPanier) return $unPanier;
    else return false;
}

function creationPanier($idClient){
    global $bdd;
    $request = $bdd->prepare("INSERT INTO panier(id_client, date_creation) VALUES (:id_client, :date_creation)");
    $request->execute(
        array(
            "id_client" => $idClient,
            "date_creation" => date('Y-m-d H:i:s')
        )
    );
    return verifierPanier($idClient);

}

function verifierProduitDansPanier($idPanier, $idProduit){
    global $bdd;

    $request = $bdd->query("SELECT * FROM panier_produit WHERE id_panier = $idPanier AND id_produit = $idProduit");
    $inPanier = $request->fetch(PDO::FETCH_ASSOC);

    return $inPanier;
}

function augmenterQuantiteProduitDansPanier($idPanier, $idProduit, $quantite)
{
    global $bdd;

    $request=$bdd->query("UPDATE panier_produit SET quantite=quantite+1 WHERE id_panier=$idPanier AND id_produit=$idProduit");
    $request->execute(
        array(
            'id_panier' => $idPanier,
            'id_produit' => $idProduit,
            'quantite' => $quantite
        )
    );
    if ($bdd->errorCode()=="00000") return 1;
    else return 0;
}

function ajouterProduitDansPanier($idPanier, $idProduit, $quantite)
{
    global $bdd;


    $request=$bdd->prepare("INSERT INTO panier_produit(id_panier,id_produit,quantite) VALUES (:id_panier, :id_produit, :quantite)");
    $request->execute(
        array(
            'id_panier' => $idPanier,
            'id_produit' => $idProduit,
            'quantite' => $quantite
        )
    );
    if ($bdd->errorCode()=="00000") return 1;
    else return 0;
}

function supprimerProduitPanier($idPanier){
    global $bdd;

    $request =  $bdd->prepare("DELETE FROM `panier_produit` WHERE id = :id_Panier");
    $request->execute(
        array(
            "id_Panier"=>$idPanier
        )
    );
}
