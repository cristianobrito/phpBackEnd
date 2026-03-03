<?php
require 'Usuario.php';

$usuario = new Usuario();
$lines = $usuario->listar();

?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>LISTAR</title>
</head>
<body>
  <h2>Lista de usuarios</h2>
  <p>
    <?php foreach($lines as $line): ?>
       <li>
        <?= htmlspecialchars($line) ?>
       </li>
    <?php endforeach; ?>

  </p>
</body>
</html>