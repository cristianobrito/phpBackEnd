<?php
require 'Usuario.php';

$nome = $_POST['nome'] ?? '';

// echo '<pre>';
// print_r($nome);
// echo '</pre>';

if('nome' === ''){
  echo "nome obrigatorio";
  exit;
}

$usuario = new Usuario();
$usuario->salvar($nome);

header('Location: listar.php');

?>