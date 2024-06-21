<br>
<br>
<br>
<br>
<div class="container">
    <div class="row">
        <?php foreach ($lstActu as $uneActu): ?>
            <div class="col-12 col-md col-lg-4">
                <div class="card shadow-sm">
                    <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false">
                        <title><?=$uneActu['titre']?></title>
                        <rect width="100%" height="100%" fill="#55595c"/>
                        <text x="50%" y="50%" fill="#eceeef" dy=".3em"><?=$uneActu['titre']?></text>
                    </svg>
                    <div class="card-body">
                        <p class="card-text"><?=substr($uneActu['description'],0,50)?></p>
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="btn-group">
                                <a href="actualite/<?=$uneActu['id']?>/" class="btn btn-sm btn-outline-secondary">Consulter</a>
                            </div>
                            <small class="text-body-secondary"><?=$uneActu['date_creation']?></small>
                        </div>
                    </div>
                </div>
            </div>
        <?php endforeach; ?>
    </div>
</div>