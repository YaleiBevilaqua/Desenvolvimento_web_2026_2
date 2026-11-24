<?php
$conexao = new PDO(
    "mysql:host=localhost;dbname=banco_final;charset=utf8mb4",
    "root",
    ""
);
$conexao->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
?>
