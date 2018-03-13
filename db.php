<?php

 
 $requete = "SELECT * FROM estados limit 1";
global $dbh;

 try {
	 //mysql:host=HOST;dbname=NOMBRE_DB', 'USUARIO', 'PASSWORD'
 $dbh = new PDO('mysql:host=localhost;dbname=ejemploajax', 'root', '');
 } catch(Exception $e) {
  exit("Error conectando al Servidor");
 }

 $resultat = $dbh->query($requete) or die(print_r($dbh->errorInfo()));


 
?>