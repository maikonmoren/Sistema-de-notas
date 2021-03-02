<?php
 include_once('NotaDAO.php');
 include_once('../Model/Pontuacao.php' );

 $opt = $_POST['opt'];
 
 if($opt == 'Salvar'){
      $notasDao = new NotaDAO();
      $return_json = $notasDao->Salvarnota($_POST['manobra'],$_POST['ponto'],$_POST['penalidade']);
      echo json_encode($return_json);
}else

if($opt == "Iniciar"){
    $notasDao = new NotaDAO();
    $return_json = $notasDao->IniNota($_POST['user_id'],$_POST['evento_id']);
    echo json_encode($return_json);
}

if($opt == "Zerar"){
    $notasDao = new NotaDAO();
    $return_json = $notasDao->Salvarnota($_POST['manobra'],'0','-70');
    echo json_encode($return_json);
}

 