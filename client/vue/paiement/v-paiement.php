<table class="table">
    <thead>
    <tr>
        <th scope="col">Id Commande</th>
        <th scope="col">Montant</th>
        <th scope="col">Dernier Nombre</th>
        <th scope="col">Date</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td><?=$resultat['commande_id']?></td>
        <td><?=$resultat['montant']?> €</td>
        <td><?=$resultat['numero_cb']?></td>
        <td><?=$resultat['date_paiement']?></td>
    </tr>
    </tbody>
</table>

