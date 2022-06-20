<?php

$servidor = "localhost";
$usuario = "root";
$clave = "";
$db = "librosofi";
$database=mysqli_connect($servidor,$usuario,$clave,$db)or die (mysql_error());

if($database){

    echo  " se realizo la conexion";

}
else {
    
     echo "no se realizo la conexion";
}

?>

