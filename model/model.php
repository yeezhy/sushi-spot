<?php
$host = "db";
$base = "b2-gp93";
$name = "b2-gp93";
$pass = "zJ6cV3bG5nY7";

$dsn = "mysql:host={$host};port=3306;dbname={$base};charset=utf8mb4";

try {
    $bdd = new PDO($dsn, $name, $pass, [
        PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
        PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8mb4"
    ]);
} catch (PDOException $ex) {
    die("Erreur de connexion à la base de donnée : " . $ex->getMessage());
}
