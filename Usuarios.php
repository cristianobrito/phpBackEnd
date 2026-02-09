<?php
/**
 * Classe responsável por persistir dados dos usuarios salvos em arquivo de texto.
 * Utilizada para cadastro e listagem simples, ideal para estudos e protótipos sem banco de dados.
 */

class Usuarios 
{
    /** @var string caminho do arquivo onde os nome são armazenados */
    private string $arquivo = 'dados.txt';

    /**
     * salva um novo nome no arquivo
     * Adiciona nome ao final do arquivo
     * @param string $nome o nome do usuario a ser salvo
     * @return void 
     */
    public function salvar(string $nome): void
    {
      file_put_contents($this->arquivo, $nome . PHP_EOL, FILE_APPEND);
    }


    /**
     * Retorna a lista de todos os usuarios cadastrados.
     * Lê o arquivo linha por linha e retorna como array.
     * Cada elemento do array é uma linha do arquivo (inclui possíveis \n se não filtrado).
     * 
     * @return array Lista de nomes (strings) 
     */
    public function listar(): array
    {
        if(! file_exists($this->arquivo))
        {
          echo 'nao encontrado';
          return [];
        }
        
        return file($this->arquivo);

    }
}

?>