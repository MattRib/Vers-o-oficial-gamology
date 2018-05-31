<?php

    //iniciando a sessão
    session_start();

    // Determinar localidade BR
    setlocale(LC_ALL, 'pt_BR');   

   if (isset($_POST["blogar"])) {
       
        require_once 'conexao.php';
    
        $us = $_POST['usuario'];
        $pw = $_POST['senha'];

        $sql = "SELECT * FROM usuario WHERE cpf_usuario ='$us' AND senha_usuario ='$pw'";

        $valid = mysqli_query($conn, $sel);  

        $user = mysqli_fetch_assoc($valid);

        if (!$user){        
            echo "<script type='text/javascript'>alert('usuário ou senha incorretos');</script>";
        } else {
            $_SESSION["nickname_usuario"] = $user["nickname_usuario"];
            header("location:cartao_inscricao/cartao_inscricao.php");
        }
     
   }        
    
?>
<!doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Gamology</title>
             
    </head>
    <body> 
        <form action="#" method="post">
            <h2>Efetue seu login</h2>
                <input type="text"     name="usuario" placeholder="Usuário"/>
                <input type="password" name="senha"   placeholder="Senha"  />
                <input type="submit"   name="blogar"  value="LOGIN"        />
        </form>
    </body>
</html>
 



            
        
          
        
    


