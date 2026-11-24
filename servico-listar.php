<?php
header("Content-Type: application/json; charset=utf-8");
include "banco.php";

$sql = "SELECT * FROM servicos ORDER BY id ASC";
$consulta = $conexao->prepare($sql);
$consulta->execute();
$registros = $consulta->fetchAll(PDO::FETCH_ASSOC);
echo json_encode($registros);
?>
