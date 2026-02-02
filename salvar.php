<?php
$nome = $_POST['nome'] ?? '';                                   // sanitização dos dados evita erro

if($nome === '')                                                // validação
{
  echo "Nome obrigatorio";
  exit;
}

$arquivo = 'dados.txt';                                         // cria o arquivo de texto
file_put_contents($arquivo, $nome . PHP_EOL, FILE_APPEND);      // escreve os nomes nesse arquivo

header('Location: listar.php');                                 // redireciona para o listar
exit;

?>