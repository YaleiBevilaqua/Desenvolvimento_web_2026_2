<?php
header("Content-Type: application/json; charset=utf-8");
include "banco.php";

$nome = trim($_POST["nome"] ?? "");
$email = trim($_POST["email"] ?? "");
$mensagem = trim($_POST["mensagem"] ?? "");

if ($nome == "" || $email == "" || $mensagem == "") {
    echo json_encode(["sucesso" => false, "mensagem" => "Preencha todos os campos."]);
    exit;
}

$sql = "INSERT INTO contatos (nome, email, mensagem) VALUES (:nome, :email, :mensagem)";
$consulta = $conexao->prepare($sql);
$consulta->bindParam(":nome", $nome);
$consulta->bindParam(":email", $email);
$consulta->bindParam(":mensagem", $mensagem);
$consulta->execute();

echo json_encode(["sucesso" => true, "mensagem" => "Mensagem enviada com sucesso!"]);
?>
