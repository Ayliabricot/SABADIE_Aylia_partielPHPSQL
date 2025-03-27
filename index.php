<?php
      ob_start();
    
    require_once("Model/pdo.php");

    $resultat = $dbPDO->prepare("SELECT * FROM mangas ORDER BY année");
    $resultat->execute();

    $mangas=$resultat->fetchAll();

    echo "<br><h1>Top manga : </h1><ul>";

    foreach ($mangas as $manga){
      echo "<li><a href=https://myanimelist.net/topmanga.php><u>".$manga['titre']."</u></a><p>".$manga['année']."</p></li>";
    }

    echo "</ul>";
?>

<?php $content = ob_get_clean(); ?>

<?php require('template.php'); ?>