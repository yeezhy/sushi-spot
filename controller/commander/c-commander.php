<?php
function commander()
{
    $monPanier = verifierPanier($_SESSION['idClient']);
    $idPanier = $monPanier['id'];

    require_once('vue/inc/inc.head.php');
    require_once('vue/inc/inc.header.php');

    if ($monPanier){
        if(isset($_POST['action']) && $_POST['action']=="commander"){
            saveCommande($_SESSION['idClient']);
            faireCommandeProduit($_SESSION['idClient']);
            header('Location: https://b2-gp93.kevinpecro.info/paiement/');
        }else{
            require_once('vue/commander/v-commander.php');
        }
    }
    require_once('vue/inc/inc.footer.php');
}

function saveCommande($idClient)
{
    global $bdd;

    $request = $bdd->prepare("INSERT INTO commande (id_client, nom, prenom, email, telephone, adresse, complement,
                                                            code_postal, ville, nom_livraison, prenom_livraison, email_livraison,
                                                            telephone_livraison, adresse_livraison, complement_livraison, code_postal_livraison,
                                                            ville_livraison, date_creation, date_visibilite, statut)
                                                VALUES (:id_client, :nom, :prenom, :email, :telephone, :adresse, :complement,
                                                        :code_postal, :ville, :nom_livraison, :prenom_livraison, :email_livraison,
                                                        :telephone_livraison, :adresse_livraison, :complement_livraison, :code_postal_livraison,
                                                        :ville_livraison, :date_creation, :date_visibilite, :statut)");
    $request->execute(array(
        ":id_client" => $_SESSION['idClient'],
        ":nom" => $_POST["fac_nom"],
        ":prenom" => $_POST["fac_prenom"],
        ":email" => $_POST["fac_email"],
        ":telephone" => $_POST["fac_tel"],
        ":adresse" => $_POST["fac_adresse"],
        ":complement" => $_POST["fac_complement"],
        ":code_postal" => $_POST["fac_code_postal"],
        ":ville" => $_POST["fac_ville"],

        ":nom_livraison" => $_POST["liv_nom"],
        ":prenom_livraison" => $_POST["liv_prenom"],
        ":email_livraison" => $_POST["liv_email"],
        ":telephone_livraison" => $_POST["liv_tel"],
        ":adresse_livraison" => $_POST["liv_adresse"],
        ":complement_livraison" => $_POST["liv_complement"],
        ":code_postal_livraison" => $_POST["liv_code_postal"],
        ":ville_livraison" => $_POST["liv_ville"],

        'date_creation' => date('Y-m-d H:i:s'),
        'date_visibilite' => date('Y-m-d H:i:s'),
        'statut' => 'attente',
        )
    );
}

function faireCommandeProduit($idClient)
{
    global $bdd;

    $id_commande = $bdd->lastInsertId();

    $request = $bdd->query("SELECT * FROM panier_produit, produit WHERE produit.id=id_produit AND id_panier = (SELECT id FROM panier WHERE id_client=$idClient)");
    $produits=$request->fetchAll(PDO::FETCH_ASSOC);

    foreach ($produits as $produit) {
        $insert_request = $bdd->prepare("INSERT INTO commande_produit(id_commande,id_produit,quantite,prix_unitaire,id_tva)
                                VALUES (:id_commande, :id_produit, :quantite, :prix_unitaire, :id_tva)");
        $insert_request->execute(array(
            ':id_commande' => $id_commande,
            ':id_produit' => $produit['id_produit'],
            ':quantite' => $produit['quantite'],
            ':prix_unitaire' => $produit['prix'],
            ':id_tva' => $produit['id_tva']
        ));
    }

    $request = $bdd->query("SELECT id FROM panier WHERE id_client=$idClient");
    $idPanier=$request->fetch(PDO::FETCH_ASSOC);
    $id=$idPanier['id'];

    $bdd->query("DELETE FROM panier_produit WHERE id_panier = $id");
    $bdd->query("DELETE FROM panier WHERE id = $id");

}