<?php

class Usuario
{
    private string $arquivo = "dados.txt";

    public function salvar($nome): void
    {
      file_put_contents($this->arquivo, $nome . PHP_EOL, FILE_APPEND);
    }

    public function listar(): array
    {
      if(!file_exists($this->arquivo)){
        echo "arquivo nao existe";
        return [];
      }

      return file($this->arquivo);

    }
}

?>