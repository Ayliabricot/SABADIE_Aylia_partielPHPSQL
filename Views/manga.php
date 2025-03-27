<?php
      ob_start();
    
    require_once("../Model/pdo.php");

    if (isset($_GET['id'])){
      $id=$_GET["id"];
      $resultat = $dbPDO->prepare("SELECT * FROM mangas INNER JOIN auteurs ON mangas.auteur_id=auteurs.id WHERE mangas.id=:id");
      $resultat->execute([
      "id"=>$id
      ]);

      $manga=$resultat->fetch();
      echo "<h1>".$manga['titre']."</h1><p>".$manga['nom']." - ".$manga['naissance']."</p><p>".$manga['description']."</p>";
      
      $resultat = $dbPDO->prepare("SELECT personnages.nom AS nom FROM mangas INNER JOIN personnages ON mangas.id=personnages.manga_id WHERE personnages.manga_id=:id");
      $resultat->execute([
      "id"=>$id
      ]);

      $personnages=$resultat->fetchAll();

      echo "<h2>Personnages : </h2><ul>";
      foreach ($personnages as $personnage){
        echo "<li><a href=''><u>".$personnage['nom']."</u></a></li>";
      }
      echo "</ul>";
      
    }
    else{
      echo "<br>Échec de la recherche : ID invalide.";
    }
?>



<?php $content = ob_get_clean(); ?>

<?php require('../template.php'); ?>