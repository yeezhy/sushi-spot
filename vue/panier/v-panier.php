<br>
<br>
<br>
<br>
<br>
<br>
<div class="container">
    <div class="row">
        <?php
        if (empty($lstProduitPanier)) {
        ?>
        <div class="alert alert-info" role="alert">
            Votre panier est vide. <a href="/produit/" class="alert-link">Parcourir les produits</a>.
        </div>
        <?php } else {?>
        <div class="container container-list">
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">Nom</th>
                        <th scope="col">Prix</th>
                        <th scope="col">Quantité</th>
                        <th scope="col">Total</th>
                        <th scope="col"></th>
                    </tr>
                </thead>
            <tbody>
                <?php foreach($lstProduitPanier as $unProduit):
                    $prixTTC = number_format($unProduit['prix']*(1+$unProduit['id_tva']),2);
                    $totalPanier += $unProduit['quantite'] * $prixTTC;
                    $totalProduit += $unProduit['quantite'];
                    ?>
                    <tr>
                        <td><?=$unProduit['nom']?></td>
                        <td><?=$prixTTC?></td>
                        <td><?=$unProduit['quantite']?></td>
                        <td><?=number_format($prixTTC*$unProduit['quantite'],2)?></td>
                        <td>
                            <form method="POST">
                                <input type="hidden" name="id" value="<?=$unProduit['id']?>">
                                <button name="supprimer" id="supprimer" value="supprimer"
                                        class="btn btn-danger">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash-fill" viewBox="0 0 16 16">
                                        <path d="M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1H2.5zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5zM8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5zm3 .5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 1 0z"/>
                                    </svg>
                                </button>
                            </form>
                        </td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
            </table>
            <div class="d-flex justify-content-center row">
                <div class="d-flex justify-content-center col-md-4 col-12 align-self-end">
                    <div class="card">
                        <div class="card-body">
                            <strong>Total : <?=$totalPanier?> €</strong> | <?=$totalProduit?> article(s)
                            <br>
                            <br>
                            <div class="d-flex justify-content-center col-12">
                                <a class="btn btn-sm btn-success" href="commander">Passer la commande</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?php } ?>
</div>