<?php
      ob_start();
    
    require_once("Model/pdo.php");

?>

<?php $content = ob_get_clean(); ?>

<?php require('template.php'); ?>