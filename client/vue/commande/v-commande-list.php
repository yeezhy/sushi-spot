
<table class="table">
    <thead>
    <tr>
        <th scope="col">ID</th>
        <th scope="col">Nom</th>
        <th scope="col">Prénom</th>
        <th scope="col">Email</th>
        <th scope="col">Date</th>
        <th scope="col">Statut</th>
        <th scope="col">Consulter</th>
    </tr>
    </thead>
    <tbody>
    <?php foreach ($resultat as $commande):
        ?>
        <tr>
            <td><?=$commande['id']?></td>
            <td><?=$commande['prenom']?></td>
            <td><?=$commande['nom']?></td>
            <td><?=$commande['email']?></td>
            <td><?=$commande['date_creation']?></td>
            <td><?=$commande['statut']?></td>
            <td>
                <div class="btn-group">
                    <a type="button" href="commande/<?=$commande['id']?>" class="btn btn-outline-dark">Consulter</a>
                </div>
            </td>
        </tr>
    <?php endforeach; ?>
    </tbody>
</table>
