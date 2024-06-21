<?php

function produit(){
    global $bdd;

    if (isset($_GET['identifiant']) && $_GET['identifiant']) {
        $request = $bdd->query("SELECT * FROM produit WHERE identifiant='".$_GET['identifiant']."'");
        $monProduit = $request->fetch();

        if (isset($_POST['action']) && $_POST['action']) {
            ajouterAuPanier($monProduit, $_POST['action']);
        }

        require_once('vue/inc/inc.head.php');
        require_once('vue/inc/inc.header.php');
        monProduit($monProduit);

    } else {
        $request = $bdd->query("SELECT * FROM produit WHERE statut = 1");
        $lstProduit = $request->fetchAll();

        require_once('vue/inc/inc.head.php');
        require_once('vue/inc/inc.header.php');
        lstProduit($lstProduit);
    }

    require_once('vue/inc/inc.footer.php');
}

function monProduit($monProduit){
    require_once('vue/produit/v-produit.php');
}

function lstProduit($lstProduit){
    require_once('vue/produit/v-lstProduit.php');
}

function ajouterAuPanier($monProduit, $quantite)
{
    try {
        if (isset($monProduit['id']) && ($monProduit['id']) && $quantite) {
            $monPanier = verifierPanier($_SESSION['idClient']);
            if (!$monPanier) {
                $monPanier = creationPanier($_SESSION['idClient']);
            }

            if ($monPanier) {
                $inPanier = verifierProduitDansPanier($monPanier['id'], $monProduit['id'], $quantite);
                if ($inPanier) {
                    return augmenterQuantiteProduitDansPanier($inPanier['id'], $inPanier['id'], $quantite);
                } else {
                    return ajouterProduitDansPanier($monPanier['id'], $monProduit['id'], $quantite);
                }
            } else return 0;
        }
    }catch (Exception $ex){
        return 0;
    }
}