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
  $senha  = password_hash($_POST['senha'], PASSWORD_DEFAULT);
  $sexo = $_POST['sexo'];
  $cidade = $_POST['cidade'];
  $estado = $_POST['estado'];
  $bairro = $_POST['bairro'];
    
  $resultado = mysqli_query($conn, "INSERT INTO logers(nome, email, senha, sexo, cidade, estado, bairro) VALUES('$nome', '$email', '$senha', '$sexo', '$cidade', '$estado', '$bairro')");

  
} if (mysqli_query($conn, $sql)) {
    echo "Cadastro realizado com sucesso!";
} else {
    echo "Erro ao cadastrar: " . mysqli_error($conn);
}

?>