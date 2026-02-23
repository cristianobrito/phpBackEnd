<?php
$nome = $_POST['nome'] ?? '';

echo '<pre>';
print_r($nome);
echo '</pre>';

if('nome' === 0){
  echo "nome obrigatorio";
  exit;
}

$arquivo = 'dados.txt';

file_put_contents($arquivo, $nome . PHP_EOL, FILE_APPEND);

header('Location: listar.php');

?>