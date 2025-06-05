<?php
if (isset($_POST['submit']))

  {
    include_once('librarycon.php');

    $email = mysqli_real_escape_string($conn, $_POST['email']);
    $senha = password_hash($_POST['senha'], PASSWORD_DEFAULT);
    
    $resultado = mysqli_query($conn, "INSERT INTO lilogin(email, senha) VALUES('$email', '$senha')");

}
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="lilogin.css">
    <title>Login</title>
</head>
<body>
    <h2>Ja tem uma conta?<br>Entre aqui</h2>
    <div class="log">
    <form action="" method="post">
        <label for="email">Email:</label><br>
        <input type="email" id="email" name="email" required><br><br>

        <label for="senha">Senha:</label><br>
        <input type="password" id="senha" name="senha" required><br><br>

        <button type="submit" name="submit">Entrar</button><br><br>

    <div class="voltar">
    <a href="home.html">Voltar</a>
    </div>
    </form>

    </div>
    
</body>
</html>