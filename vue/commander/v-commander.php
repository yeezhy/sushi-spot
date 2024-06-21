<div class="container mh-600 mt-5 py-5">
    <div class="row">
        <form method="post">
            <div class="accordion-item">
                <h2 class="accordion-header">
                    <div class="accordion-button">
                        1 - Informations de commande
                    </div>
                </h2>
                <div class="accordion-collapse">
                    <div class="accordion-body">
                        <div class="row mb-2">
                            <div class="col">
                                <div><strong>Les champs marqués d'un <span class="obligatoire">*</span> sont obligatoires.</strong></div>
                                <br>
                                <label for="inputEmail" class="form-label">E-mail
                                    <span class="obligatoire">*</span>
                                </label>
                                <input required type="email" class="form-control" name="fac_email" id="inputEmail" placeholder="email@exemple.com">
                            </div>
                        </div>
                        <div class="row mb-2">
                            <div class="col">
                                <label for="inputName" class="form-label">Nom
                                    <span class="obligatoire">*</span>
                                </label>
                                <input required type="text" class="form-control" name="fac_nom" id="inputName" placeholder="Dupont">
                            </div>
                            <div class="col">
                                <label for="inputFirstName" class="form-label">Prenom
                                    <span class="obligatoire">*</span>
                                </label>
                                <input required type="text" class="form-control" name="fac_prenom" id="inputFirstName" placeholder="Jean">
                            </div>
                            <div class="col-3">
                                <label for="inputPhone" class="form-label">Téléphone
                                    <span class="obligatoire">*</span>
                                </label>
                                <input required type="text" class="form-control" name="fac_tel" id="inputPhone" placeholder="06 81 80 20 08">
                            </div>
                        </div>
                        <div class="row mb-2">
                            <div class="col">
                                <label for="inputAdresse" class="form-label">Adresse
                                    <span class="obligatoire">*</span>
                                </label>
                                <input required type="text" class="form-control" name="fac_adresse" id="inputAdresse" placeholder="37 rue voiture">
                            </div>
                            <div class="col-4">
                                <label for="inputCodePostal" class="form-label">Code postal
                                    <span class="obligatoire">*</span>
                                </label>
                                <input required type="text" class="form-control" name="fac_code_postal" id="inputCodePostal" placeholder="80000">
                            </div>
                        </div>
                        <div class="row mb-2">
                            <div class="col-5">
                                <label for="inputVille" class="form-label">Ville
                                    <span class="obligatoire">*</span>
                                </label>
                                <input required type="text" class="form-control" name="fac_ville" id="inputVille" placeholder="Amiens">
                            </div>
                            <div class="col">
                                <label for="inputComplement" class="form-label">Complément d'adresse</label>
                                <input type="text" class="form-control" name="fac_complement" id="inputComplement" placeholder="appartement, digicode, etc...">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="accordion-item">
                <h2 class="accordion-header">
                    <div class="accordion-button">
                        2 - Informations livraison
                    </div>
                </h2>
                <div>
                    <div class="accordion-body">
                        <div class="mb-2">
                            <div class="mb-2 form-check"></div>
                        </div>
                        <div class="row mb-2">
                            <div class="col">
                                <label for="inputEmailLivraison" class="form-label">E-mail
                                    <span class="obligatoire">*</span>
                                </label>
                                <input required type="email" class="form-control" name="liv_email" id="inputEmailLivraison" placeholder="email@exemple.com">
                            </div>
                            <div class="col">
                                <label for="inputPhoneLivraison" class="form-label">Téléphone
                                    <span class="obligatoire">*</span>
                                </label>
                                <input required type="text" class="form-control" name="liv_tel" id="inputPhoneLivraison" placeholder="06 81 80 20 08">
                            </div>
                        </div>
                        <div class="row mb-2">
                            <div class="col">
                                <label for="inputNameLivraison" class="form-label">Nom
                                    <span class="obligatoire">*</span>
                                </label>
                                <input required type="text" class="form-control" name="liv_nom" id="inputNameLivraison" placeholder="Dupont">
                            </div>
                            <div class="col">
                                <label for="inputFirstNameLivraison" class="form-label">Prenom
                                    <span class="obligatoire">*</span>
                                </label>
                                <input required type="text" class="form-control" name="liv_prenom" id="inputFirstNameLivraison" placeholder="Jean">
                            </div>
                        </div>
                        <div class="row mb-2">
                            <div class="col">
                                <label for="inputAdresseLivraison" class="form-label">Adresse de livraison
                                    <span class="obligatoire">*</span>
                                </label>
                                <input required type="text" class="form-control" name="liv_adresse" id="inputAdresseLivraison" placeholder="37 rue voiture">
                            </div>
                            <div class="col-4">
                                <label for="inputCodePostalLivraison" class="form-label">Code postal
                                    <span class="obligatoire">*</span>
                                </label>
                                <input required type="text" class="form-control" name="liv_code_postal" id="inputCodePostalLivraison" placeholder="80000">
                            </div>
                        </div>
                        <div class="row mb-2">
                            <div class="col-5">
                                <label for="inputVilleLivraison" class="form-label">Ville
                                    <span class="obligatoire">*</span>
                                </label>
                                <input required type="text" class="form-control" name="liv_ville" id="inputVilleLivraison" placeholder="Amiens">
                            </div>
                            <div class="col">
                                <label for="inputComplementLivraison" class="form-label">Complément d'adresse</label>
                                <input type="text" class="form-control" name="liv_complement" id="inputComplementLivraison" placeholder="appartement, digicode, etc...">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="accordion-item">
                <h2 class="accordion-header">
                    <div class="accordion-button">
                        3 - Valider
                    </div>
                </h2>
                <div>
                    <div class="accordion-body">
                        <div class="mb-2 form-check">
                            <input required type="checkbox" class="form-check-input" id="acceptCheck">
                            <label class="form-check-label" for="acceptCheck">J'accepte les conditions générales de vente
                                <span class="obligatoire">*</span>
                            </label>
                            <span class="d-none invalid-feedback">Cochez cette case pour continuer</span>
                        </div>
                        <input type="hidden" name="action" value="commander">
                        <button type="submit" class="btn btn-sm btn-outline-dark">Commander</button>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>