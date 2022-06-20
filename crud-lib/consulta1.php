<?php
$codigo= $_POST['Codigo'];
include 'conexion2.php';
$myQuery =$conexion2 -> query ("select * from tb_libro where Codigo=$codigo");
//echo($myQuery);
$consulta1= ($myQuery);
$valores = mysqli_fetch_array($consulta1);
// DB reading to variable
//$codigo 

$Titulo_libro          = $valores[1];

$Editorial_libro        = $valores[4];
$cantidad_libro         = $valores[5];
$Fecha_publicacion = $valores[6];



include 'formu_consulta.php';


?>
