<?php

//iniciando a sessão
session_start();

// Determinar localidade BR
setlocale(LC_ALL, 'pt_BR');
?>                      
<?php

if (isset($_POST["blogar"])) {

    require_once '../conexao/conexao.php';

    $us = $_POST['cpf_usuario'];
    $pw = $_POST['senha_usuario'];


    $sql = "SELECT * FROM usuario WHERE cpf_usuario ='$us' AND senha_usuario ='$pw'";

    $valid = mysqli_query($conn, $sql);

    $user = mysqli_fetch_assoc($valid);

    if (!$user) {
        echo "<script type='text/javascript'>alert('usuário ou senha incorretos');</script>";
    } else {
        $_SESSION["nickname_usuario"] = $user["nickname_usuario"];
        header("location:cartao_inscricao.php");
    }
}
?>
                        