<?php
$arquivo = 'dados.txt';

if(! file_exists($arquivo))
{
  echo "arquivo nao encontrado!";
  exit;
}

$dados = file($arquivo);

foreach($dados as $dado)
{
  echo htmlspecialchars($dado) . "<br>";
}

?>

<hr>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>volta</title>
</head>
<body>
    <a href="index.php">
        <button>Voltar</button>
    </a>
</body>
</html>