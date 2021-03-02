
<?php
 include_once('../Model/Pontuacao.php' );
 include_once('MiscDAO.php');

 $opt = $_POST['opt'];
 

 if ($opt == 'Iniciar'){
    $MiscDao = new MiscDAO();
    $return_json = $MiscDao->IniciarPontuacao($_POST['category'],$_POST['event']);
    echo json_encode($return_json);
 }else

if ($opt == 'login_juiz'){
   $MiscDao = new MiscDAO();
   $return_json = $MiscDao->LoginJuiz($_POST['email'] , $_POST['senha']);
   echo json_encode($return_json);
}else 

if($opt == "Eventos"){
   $MiscDao = new MiscDAO();
   $return_json = $MiscDao->Eventos();
   echo json_encode($return_json);

}else

if($opt == "Telao"){
   $MiscDao = new MiscDAO();
   $return_json = $MiscDao->Telao();
   echo json_encode($return_json);
}
if($opt == "Sair" ){
   session_start();
   session_destroy();
   exit();
}