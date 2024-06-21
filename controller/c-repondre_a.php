<?php

function repondreA(){
    global $bdd;


    if ($_SERVER['REQUEST_METHOD'] == 'POST'){
        $commande_id = $_POST['Ref'];
        $commande_id = explode('-', $commande_id);
        $commande_id = $commande_id[1];
        $montant = $_POST['Mt']/100;
        $type_cb = $_POST['TypeC'];
        $numero_cb = $_POST['numC'];
        $date_paiement = formatDate($_POST['dateP']);
        $request = $bdd->prepare("INSERT INTO commande_paiement (commande_id, montant, type_cb, numero_cb, date_paiement) VALUES (:commande_id, :montant, :type_cb, :numero_cb, :date_paiement)");
        $request->execute(array(
            'commande_id' => $commande_id,
            'montant' => $montant,
            'type_cb' => $type_cb,
            'numero_cb' => $numero_cb,
            'date_paiement' => $date_paiement
        ));
        
        if (isset($_POST['Erreur'])){
            switch ($_POST['Erreur']){
                case '00000':
                    $request = $bdd->prepare("UPDATE commande SET statut = :valide WHERE id = :commande_id");
                    $request->execute(array(
                        'valide' => 'valide',
                        'commande_id' => $commande_id
                    ));
                    break;
                case '00001':
                    $request = $bdd->prepare("UPDATE commande SET statut = :erreur WHERE id = :commande_id");
                    $request->execute(array(
                        'erreur' => "annulé",
                        'commande_id' => $commande_id
                    ));
                    break;
                default:
                    $request = $bdd->prepare("UPDATE commande SET statut = :erreur WHERE id = :commande_id");
                    $request->execute(array(
                        'erreur' => "refusé",
                        'commande_id' => $commande_id
                    ));
                    break;
            }
        }
    }

}

function formatDate($date) {
    // Vérifie si la date a exactement 8 caractères
    if (strlen($date) !== 8) {
        return false;
    }

    // Extraire le jour, le mois et l'année
    $day = substr($date, 0, 2);
    $month = substr($date, 2, 2);
    $year = substr($date, 4, 4);

    // Retourne la date formatée
    return $year . '-' . $month . '-' . $day;
}