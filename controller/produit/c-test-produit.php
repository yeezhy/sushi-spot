<?php
function testProduit()
{
    global $bdd;

    $tabResultat = array();

    // Récupérer la liste des produits
    $request = $bdd->query("SELECT * FROM produit");
    $lstPdt = $request->fetchAll();

    foreach ($lstPdt as $pdt) {
        // Déterminer la quantité à ajouter
        $quantite = rand(1, 10);

        $tabResultat = execTestPdt($pdt, $quantite, $tabResultat);
    }

    $tabResultat = execTestPdt($lstPdt[0], 0, $tabResultat);
    $tabResultat = execTestPdt(1, 1, $tabResultat);
    $tabResultat = execTestPdt(1, 0, $tabResultat);

    // Insérer les résultats du test dans la base de données
    $request = $bdd->prepare("INSERT INTO test (dateTest, contenu, page) VALUES (:dateTest, :contenu, :page)");
    $request->execute(array(
        'dateTest' => date('Y-m-d H:i:s'),
        'contenu' => json_encode($tabResultat),
        'page' => "cTestProduit"
    ));
}

function execTestPdt($pdt, $quantite, $tabResultat)
{
    $retour = ajouterAuPanier($pdt, $quantite);

    if (!isset($pdt['produit_id']) || !$pdt['produit_id']) {
        unset($pdt);
        $pdt['produit_id'] = 0;
        $pdt['nom'] = "Test produit invalide";
    }

    $temp = array(
        'produit_id' => $pdt['produit_id'],
        'nom' => $pdt['nom'],
        'quantite' => $quantite,
        'retour' => $retour
    );

    array_push($tabResultat, $temp);

    return $tabResultat;
}