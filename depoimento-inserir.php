<?php
header("Content-Type: application/json; charset=utf-8");
include "banco.php";

$nome = trim($_POST["nome"] ?? "");
$depoimento = trim($_POST["depoimento"] ?? "");
$data = date("Y-m-d");

if ($nome == "" || $depoimento == "") {
    echo json_encode(["sucesso" => false, "mensagem" => "Preencha seu nome e seu depoimento."]);
    exit;
}

$sql = "INSERT INTO depoimentos (nome, depoimento, data_depoimento) VALUES (:nome, :depoimento, :data)";
$consulta = $conexao->prepare($sql);
$consulta->bindParam(":nome", $nome);
$consulta->bindParam(":depoimento", $depoimento);
$consulta->bindParam(":data", $data);
$consulta->execute();

echo json_encode(["sucesso" => true, "mensagem" => "Depoimento enviado com sucesso!"]);
?>
