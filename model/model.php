<?php

$host = "localhost";
$base = "b2-gp93";
$name = "b2-gp93";
$pass = 'zJ6cV3bG5nY7';

try{
    $bdd = new PDO("mysql:host=$host;dbname=$base", $name, $pass,
        array(PDO::MYSQL_ATTR_INIT_COMMAND=> 'SET NAMES utf8'));
}
catch (PDOException $ex){
    die('Erreur de connexion à la base de donnée :' .$ex->getMessage());
}
