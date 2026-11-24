<?php
header("Content-Type: application/json; charset=utf-8");
include "banco.php";

$sql = "SELECT * FROM depoimentos ORDER BY data_depoimento DESC, id DESC";
$consulta = $conexao->prepare($sql);
$consulta->execute();
$registros = $consulta->fetchAll(PDO::FETCH_ASSOC);
echo json_encode($registros);
?>
