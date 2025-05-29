<?php

if (isset($_POST['submit']))
  {
    // print_r($_POST['nome']);
    //  print_r('<br>'); //ql
    // print_r($_POST['email']);
    //  print_r('<br>'); //ql
    // print_r($_POST['senha']);
    //  print_r('<br>'); // ql
    // print_r($_POST['sexo']);
    //  print_r('<br>'); //ql
    // print_r($_POST['cidade']);
    //  print_r('<br>'); //ql
    // print_r($_POST['estado']);
    //  print_r('<br>'); //ql
    // print_r($_POST['bairro']);
  

  include_once('logconnect.php');

  $nome = $_POST['nome'];
  $email = $_POST['email'];
  $senha  = password_hash($_POST['senha'], PASSWORD_DEFAULT); // senha segura
  $sexo = $_POST['sexo'];
  $cidade = $_POST['cidade'];
  $estado = $_POST['estado'];
  $bairro = $_POST['bairro'];
    
  $resultado = mysqli_query($conn, "INSERT INTO logers(nome, email, senha, sexo, cidade, estado, bairro) VALUES('$nome', '$email', '$senha', '$sexo', '$cidade', '$estado', '$bairro')");
}

if (isset($_POST["submit"])) {
    
}
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="log.css">
    <title>Tela de login</title>
</head>
<body>
    <h2>Cadastre-se</h2>
     
    <div class="formu">
    <form action="log.php" method="POST">
        <label for="nome">Nome:</label><br>
        <input type="text" id="nome" name="nome" required><br><br>

        <label for="email">E-mail:</label><br>
        <input type="email" id="email" name="email" required><br><br>

        <label for="senha">Senha:</label><br>
        <input type="password" id="senha" name="senha" required><br><br>

        <label>Sexo:</label><br>
        <input type="radio" id="masculino" name="sexo" value="masculino" required>
        <label for="masculino">Masculino</label><br>
        <input type="radio" id="feminino" name="sexo" value="feminino">
        <label for="feminino">Feminino</label><br>
        <input type="radio" id="outro" name="sexo" value="outro">
        <label for="outro">Outro</label><br><br>

        <label for="cidade">Cidade:</label><br>
        <input type="text" id="cidade" name="cidade" required><br><br>

        <label for="estado">Estado:</label><br>
        <input type="text" id="estado" name="estado" required><br><br>

        <label for="bairro">Bairro:</label><br>
        <input type="text" id="bairro" name="bairro" required><br><br>

        <button type="submit" name="submit">Cadastrar</button>
    </form>
    </div>
     <br><br>
     <div class="voltar">
    <a href="home.html">Voltar</a>
    </div>
</body>
</html>