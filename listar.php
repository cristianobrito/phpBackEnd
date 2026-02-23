<?php
$arquivo = "dados.txt";

if(!file_exists($arquivo)){
  echo "arquivo nao existe";
  exit;
}

$lines = file($arquivo);

foreach($lines as $line){
   echo htmlspecialchars($line) . '<br>';
}

?>