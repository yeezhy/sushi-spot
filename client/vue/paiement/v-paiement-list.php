
<table class="table">
    <thead>
    <tr>
        <th scope="col">Id Commande</th>
        <th scope="col">Montant</th>
        <th scope="col">Date</th>
        <th scope="col">Consulter</th>
    </tr>
    </thead>
    <tbody>
    <?php foreach ($resultat as $paiement):?>
        <tr>
            <td><?=$paiement['commande_id']?></td>
            <td><?=$paiement['montant']?> €</td>
            <td><?=$paiement['date_paiement']?></td>
            <td>
                <div class="btn-group">
                    <a type="button" href="paiement/<?=$paiement['id']?>" class="btn btn-outline-dark">Consulter</a>
                </div>
            </td>
        </tr>
    <?php endforeach; ?>
    </tbody>
</table>
