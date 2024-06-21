
<table class="table">
    <thead>
    <tr>
        <th scope="col">ID</th>
        <th scope="col">Nom</th>
        <th scope="col">Prénom</th>
        <th scope="col">Mail</th>
        <th scope="col">Téléphone</th>
        <th scope="col">Adresse</th>
        <th scope="col">Complément</th>
        <th scope="col">Code Postal</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td><?=$resultat['id']?></td>
        <td><?=$resultat['prenom']?></td>
        <td><?=$resultat['nom']?></td>
        <td><?=$resultat['email']?></td>
        <td><?=$resultat['telephone']?></td>
        <td><?=$resultat['adresse']?></td>
        <td><?=$resultat['complement']?></td>
        <td><?=$resultat['code_postal']?></td>
    </tr>
    </tbody>
</table>

<!--
<div class="container">
    <table class="table">
        <thead>
        <tr>
            <th scope="col">Produit</th>
            <th scope="col">Prix</th>
            <th scope="col">Quantité</th>
            <th scope="col">Total Produit</th>
        </tr>
        </thead>
        <tbody>
        <?php foreach ($resultat as $commande):
    ?>
            $total += $contenu['quantite']*$contenu['prix_unitaire'];
        <tr>
            <td><?=get_column("SELECT nom FROM produit WHERE id = ").$contenu['id']?></td>
            <td><?=$contenu['prix_unitaire']?></td>
            <td><?=$contenu['quantite']?></td>
            <td><?=$contenu['prix_unitaire']*$contenu['quantite']?></td>
        </tr>
        <?php endforeach; ?>
        </tbody>
    </table>
    <div class="col-md-4 col-12">
        <div class="card">
            <div class="card-body" style="background-color: #FAEDCD">
                Total <?=$total?> €
            </div>
        </div>
    </div>
</div>
-->
