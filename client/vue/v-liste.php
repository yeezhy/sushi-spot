<div>
    <table class="table">
        <thead>
        <tr>
            <th scope="col">URL</th>
            <th scope="col">Paramètre</th>
            <th scope="col">Méthode</th>
            <th scope="col">Statut</th>
        </tr>
        </thead>

        <tbody>
        <?php foreach ($resultat as $fonction):
            ?>
            <tr>
                <td><?=$fonction['url']?></td>
                <td><?=$fonction['param']?></td>
                <td><?=$fonction['method']?></td>
                <td><?=$fonction['statut']?></td>
                <td>
            </tr>
        <?php endforeach; ?>
        </tbody>
    </table>
</div>