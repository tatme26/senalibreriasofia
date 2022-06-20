<?php
$codigo            = $_POST['codigo'];
$titulo            = $_POST['titulo'];
$autor             = $_POST['autor'];
$genero            = $_POST['genero'];
$editorial         = $_POST['editorial'];
$cantidad          = $_POST['cantidad'];
$fecha_publicacion = $_POST['fecha_publicacion'];
$edicion           = $_POST['edicion'];

include 'conexion2.php';
//$myQuery  = "UPDATE `tablainventario` SET `titulo`='$titulo',`autor`='$autor',`genero`='$genero',`editorial`='$editorial',`cantidad`='$cantidad',`fecha_publicacion`='$fecha_publicacion',`edicion`='$edicion' WHERE `codigo`='$codigo'

//echo($myQuery);
$consulta1 = $conexion2->query ("UPDATE `inventario` SET titulo='$titulo',`autor`='$autor',`genero`='$genero',`editorial`='$editorial', `cantidad`='$cantidad',`fecha_publicacion`='$fecha_publicacion',`edicion`='$edicion' WHERE codigo='$codigo'");

?>