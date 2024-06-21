<br>
<br>
<br>
<div class="container mt-5 mb-5">
    <div class="alert alert- none" role="alert"></div>

    <div class="card">
        <div class="row g-0">
            <div class="col-md-6 border-end">
                <div class="d-flex flex-column justify-content-center">
                    <img src="media/img/<?=$monProduit['image']?>">
                </div>
            </div>

            <div class="col-md-6">
                <div class="p-3 right-side">
                    <div class="d-flex justify-content-between align-items-center"></div>

                    <div class="mt-2 pr-3 content">
                        <p><strong class="card-text"><?=$monProduit['nom'] ?></strong></p>
                        <p class="card-text"><?=$monProduit['description'] ?></p>
                    </div>

                    <br>
                    <p><strong class="card-text">Prix : <?=$monProduit['prix'] ?>€ (à l'unité)</strong></p>
                    <br>

                    <?php
                    if(isset($_POST['action'])) {
                        echo "Vous avez ajouté ".$_POST['action']." produit(s) au panier.";
                    }else{
                        echo false;
                    }
                    ?>
                    <form method="post">
                        <button type="submit" class="btn btn-sm btn-outline-dark" name="btn-atc">Ajouter au panier</button>
                        <input type="number" class="btn btn-sm btn-outline-dark" value="1" name="action" min="1" max="20">
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>