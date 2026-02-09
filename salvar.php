<?php
require "Usuarios.php";

$nome = $_POST['nome'] ?? '';                    

if($nome === '')                                    
{
  echo "Nome obrigatorio";
  exit;
}

$usuario =  new Usuarios();
$usuario->salvar($nome);

header('Location: listar.php');                                 
exit;

?>