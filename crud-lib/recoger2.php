<?php

$codigo 			= $_POST['codigo'];
$titulo 			= $_POST['titulo'];
$autor  			= $_POST['autor'];
$genero 			= $_POST['genero'];
$editorial 			= $_POST['editorial'];
$cantidad  			= $_POST['cantidad'];
$fecha_publicacion 	= $_POST['fecha_publicacion'];
$edicion           	= $_POST['edicion'];

include 'conexion2.php';
$consulta=$conexion2  -> query ("INSERT INTO inventario(Codigo,Titulo,Autor,Genero,Editorial,Cantidad,Fecha_publicacion,Edicion) 
VALUES ('$_REQUEST[codigo]','$_REQUEST[titulo]','$_REQUEST[autor]','$_REQUEST[genero]','$_REQUEST[editorial]','$_REQUEST[cantidad]','$_REQUEST[fecha_publicacion]','$_REQUEST[edicion]')");

echo"libro agregado";


?>


<link rel="stylesheet" href="style2.css">
<button id="boton"><a href="index.html"> Regresar </a></button>