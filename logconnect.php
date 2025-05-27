<?php
$servidordb = 'localhost';
$usuariodb = 'root';
$senhadb = '';
$nomedb = 'usuarios';

// Criar conexão
$conn = new mysqli($servidordb, $usuariodb, $senhadb, $nomedb);

// Verificar conexão
if ($conn->connect_errno) {
    echo "Erro na conexão com o banco de dados: " . $conn->connect_error;
} else {
    echo "Conectado com sucesso ao banco de dados!";
}


?>
