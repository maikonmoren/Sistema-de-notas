    <?php

class Conexao{
    private static $host = "localhost";
    private static $user = "root";
    private static $pass = "141219";
    private static $bd = "sistema_de_notas";

    private static $conn;

    public static function getConexao(){
     try{
        if(!isset(self::$conn)){
            self::$conn = new PDO("mysql:host=" . self::$host.";dbname=".self::$bd,self::$user,self::$pass,array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));
        }   
        return self::$conn;
        }catch(PDOException $e){
            die("Erro: <code>" . $e->getMessage() . "</code>");
        } 
}


}

?>