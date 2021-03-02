<?php 
    include_once('Conexao.php');
    

  class MiscDAO{

 public function Eventos(){
    $return_array = array();
    $pdo=Conexao::getConexao();
    $sql = 'select id, name from events';
    foreach($pdo->query($sql)as $row){
            $return_array[] = array(
                "evento_id" => $row['id'],
                "evento_nome" => $row['name']
            );
    }
          $return_array[] = array(
              "evento_id" => "0",
              "evento_nome" => "Sem evento"
          ) ;
    return $return_array;

 }
 public function IniciarPontuacao($category,$event){
  try{
    $sql = "UPDATE runner_turn set category = '".$category."' where runner_id = 1";
         $pdo = Conexao::getConexao()->prepare($sql);
         $pdo->execute();
    $return_array = array();
    $pdo = Conexao::getConexao();
    $sql = 'select * from VW_Competitors where category = "'.$category.'" and event = "'.$event.'" order by oe;';
    foreach($pdo->query($sql) as $row)
    {
    $id = $row['sub_id'];
                     $name = $row['name'];
                     $oe = $row['oe'];
                     $return_array[] = array(
                         "id" => $id,
                         "name" => $name,
                         "oe" => $oe
                     );
                 }
                 return $return_array; 
}catch (PDOException $e){
    return $return_array[] = array("erro" => $e->getMessage());
}}
        public function LoginJuiz($email , $psw){
          $return_array = array();   
          $sql = 'select * from VW_juiz_login where email = "'.$email.'"';
            $pdo = Conexao::getConexao()->prepare($sql);
            $pdo->execute();
            $linha = $pdo->fetch(PDO::FETCH_ASSOC);
            if($pdo->rowCount() == 1){
             if($linha['psw']==crypt($psw,$linha['psw'])){
                    session_start();
                $_SESSION['juiz_id'] = $linha['jid'];
                $_SESSION['juiz_nome'] = $linha['name'];
                $return_array[] = array(
                    "juiz_id" => $_SESSION['juiz_id'],
                    "juiz_nome" => $_SESSION['juiz_nome']
                );
                return $return_array;
                }else{
                    $return_array[] = array(
                        "juiz_id" => "erro",
                        "juiz_nome" => "Senha ou usuario incorreto" 
                     );
                     return $return_array;
                }   
                
            }else{ 
                $return_array[] = array(
                    "juiz_id" => "erro",
                    "juiz_nome" => "Não encontrado" 
                 );
                return $return_array;
                }
        }
    public function Telao(){
            $return_array = array();   
            $sql = 'select * from VW_Painel';
            $pdo = Conexao::getConexao()->prepare($sql);
            $pdo->execute();
            $linha = $pdo->fetch(PDO::FETCH_ASSOC);
            $return_array[] = array(
        "m1" => $linha['m1'],"m2" => $linha['m2'],
        "m3" => $linha['m3'],"m4" => $linha['m4'],
        "m5" => $linha['m5'],"m6" => $linha['m6'],
        "m7" => $linha['m7'],"m8" => $linha['m8'],
        "p1" => $linha['p1'],"p2" => $linha['p2'],  
        "p3" => $linha['p3'],"p4" => $linha['p4'],  
        "p5" => $linha['p5'],"p6" => $linha['p6'],  
        "p7" => $linha['p7'],"p8" => $linha['p8'],   
        "runner"=>$linha['runner'], "animal"=>$linha['animal'],
        "category"=> $linha['category'], "judge"=>$linha['judge']                     
    );
         return $return_array;
    }
   
}