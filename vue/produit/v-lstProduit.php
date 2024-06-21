<br>
<br>
<br>
<br>
<div class="album pt-5 bg-light">
    <div class="container">
        <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
            <?php foreach($lstProduit as $monProduit): ?>
                <div class="col">
                    <div class="card shadow-sm">
                        <img class="bd-placeholder-img card-img-top" width="100%" height="300" src="media/img/<?=$monProduit['image']?>">
                        <div class="card-body">
                            <p class="card-text"><?=$monProduit['nom'] ?></p>
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="btn-group">
                                    <a type="button" href="produit/<?=$monProduit['identifiant']?>" class="btn btn-sm btn-outline-secondary">Détails</a>
                                </div>
                                <small class="text-muted"><?=$monProduit['prix']?>€</small>
                            </div>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    </div>
</div>