<?php
      ob_start();
    
    require_once("../Model/pdo.php");

    if (isset($_GET['id'])){
      $id=$_GET["id"];
      $resultat = $dbPDO->prepare("SELECT * FROM personnages WHERE personnages.id=:id");
      $resultat->execute([
      "id"=>$id
      ]);

      $personnage=$resultat->fetch();
      echo "<h1>".$personnage['nom']."</h1><p>".$personnage['description']."</p>";
      echo "<a href='../index.php'><u>Retour vers page d'accueil</u></a>";  
    }
    else{
      echo "<br>Échec de la recherche : ID invalide.";
    }
?>



<?php $content = ob_get_clean(); ?>

<?php require('../template.php'); ?>