<?php
			include 'conexion2.php';
			$consulta = $conexion2 -> query ("DELETE FROM inventario WHERE titulo = '{$_POST['nombreOriginal']}'") or die ("Ha fallado la conexión");
			$conexion = null;
			
		?>

<button id="boton"><a href="index.html"> Regresar </a></button>

<link rel="stylesheet" href="style2.css">
