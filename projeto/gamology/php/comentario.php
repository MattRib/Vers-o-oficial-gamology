<?php

if (isset($_POST['bcomentario'])) {

    $n = $_POST['nome_comentario'];
    $e = $_POST['email_comentario'];
    $m = $_POST['texto_comentario'];
    
    require_once '../conexao/conexaoobj.php';

    $sqlcomentario = "INSERT INTO `comentario`(`nome_comentario`, `email_comentario`, `texto_comentario`) VALUES (?, ?, ?)";

    $stmtcomentario = $con->prepare($sqlcomentario);

    $stmtcomentario->bind_param('sss', $n, $e, $m);

    $comentou = $stmtcomentario->execute();

    if ($comentou) {
        echo '<script type="text/javascript">alert("Mensagem enviada!");</script>';
            header("Location:../html/torneio.html");
    } else {
        echo '<script type="text/javascript">alert("Não foi possivel enviar a mensagem!");</script>';
    }
}
?>