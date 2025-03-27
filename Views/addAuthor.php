<?php
      ob_start();
    
    require_once("../Model/pdo.php");

    
    if(isset($_POST['nom']) && isset($_POST['naissance'])){
    $resultat = $dbPDO->prepare("INSERT INTO auteurs(nom,naissance) VALUES (:nom,:naissance)");
    $resultat->execute([
      "nom"=>$_POST['nom'],
      "naissance"=>$_POST['naissance'],
    ]);
    echo "<br>Auteur ajouté.";
  }
  else{
    echo "<br>Veuillez saisir les données de l'auteur.";
  }
  
?>

<h3>Nouvel auteur : </h3>
<form action="" method="post">
        
      Nom : <input type="text" name="nom" />
      Année de naissance : <input type="text" name="naissance" />
            
      <input type="submit" value="Valider" />
</form>

<a href='../index.php'><u>Retour vers page d'accueil</u></a>

<?php $content = ob_get_clean(); ?>

<?php require('../template.php'); ?>