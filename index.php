<?php
      ob_start();
    
    require_once("Model/pdo.php");

    echo "<a href='Views/addAuthor.php'><br>-> <u>Ajouter un auteur</u></a>";
    $resultat = $dbPDO->prepare("SELECT * FROM mangas ORDER BY année");
    $resultat->execute();

    $mangas=$resultat->fetchAll();

    echo "<br><h1>Top manga : </h1><ul>";

    foreach ($mangas as $manga){
      $id=$manga['id'];
      echo "<li><a href='Views/manga.php?id=$id'><u>".$manga['titre']."</u></a><p>".$manga['année']."</p></li>";
    }

    echo "</ul>";
    
?>

<?php $content = ob_get_clean(); ?>

<?php require('template.php'); ?>