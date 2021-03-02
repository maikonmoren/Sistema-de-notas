<?php 
    include_once( 'Conexao.php');
     session_start();
  class NotaDAO{
    public function IniNota($user){
        $sql = "SELECT NovaNota('".$user."','".$_SESSION['juiz_id']."') as evento";
        $pdo = Conexao::getConexao()->prepare($sql);
        $pdo->execute(); 
        $row=$pdo->fetch(PDO::FETCH_ASSOC);
        if($pdo->rowCount()==1){
           $_SESSION['grades_id']=$row['evento'];
           return (true);
        }else{
            return (false);
        } 
     }
    public function Salvarnota($manobra,$ponto,$penalidade){   
      switch ($manobra){
            case 1: $row_M = "maneuver_1"; $row_P = "penalty_1" ;break;
            case 2: $row_M = "maneuver_2"; $row_P = "penalty_2";break;
            case 3: $row_M = "maneuver_3"; $row_P = "penalty_3";break;
            case 4: $row_M = "maneuver_4"; $row_P = "penalty_4";break;
            case 5: $row_M = "maneuver_5"; $row_P = "penalty_5";break;
            case 6: $row_M = "maneuver_6"; $row_P = "penalty_6";break;
            case 7: $row_M = "maneuver_7"; $row_P = "penalty_7";break;
            case 8: $row_M = "maneuver_8"; $row_P = "penalty_8";break;
         }
         $sql = "UPDATE grades SET ".$row_M." = ".$ponto." , ".$row_P." = '".$penalidade."' WHERE id= '".$_SESSION['grades_id']."';";
         $pdo = Conexao::getConexao()->prepare($sql);
         $pdo->execute();
         if($pdo->rowCount() == 1){
            return true;
         }else{
            return false;
         }

    }
 
}
?>