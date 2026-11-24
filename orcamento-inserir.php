<?php
header("Content-Type: application/json; charset=utf-8");
include "banco.php";

$nome = trim($_POST["nome"] ?? "");
$email = trim($_POST["email"] ?? "");
$telefone = trim($_POST["telefone"] ?? "");
$endereco = trim($_POST["endereco"] ?? "");
$cidade = trim($_POST["cidade"] ?? "");
$uf = strtoupper(trim($_POST["uf"] ?? ""));
$data = trim($_POST["data"] ?? "");
$observacoes = trim($_POST["observacoes"] ?? "");
$servico = trim($_POST["servico"] ?? "");

if ($nome == "" || $email == "" || $telefone == "" || $data == "" || $servico == "") {
    echo json_encode(["sucesso" => false, "mensagem" => "Preencha os campos obrigatórios."]);
    exit;
}

$sql = "INSERT INTO orcamentos (nome, email, telefone, endereco, cidade, uf, data_desejada, observacoes, servico)
        VALUES (:nome, :email, :telefone, :endereco, :cidade, :uf, :data, :observacoes, :servico)";
$consulta = $conexao->prepare($sql);
$consulta->bindParam(":nome", $nome);
$consulta->bindParam(":email", $email);
$consulta->bindParam(":telefone", $telefone);
$consulta->bindParam(":endereco", $endereco);
$consulta->bindParam(":cidade", $cidade);
$consulta->bindParam(":uf", $uf);
$consulta->bindParam(":data", $data);
$consulta->bindParam(":observacoes", $observacoes);
$consulta->bindParam(":servico", $servico);
$consulta->execute();

echo json_encode(["sucesso" => true, "mensagem" => "Orçamento enviado com sucesso!"]);
?>
