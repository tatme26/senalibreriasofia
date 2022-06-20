<html>
	<head>
		<title>Ejercicio  - DELETE</title>
		<meta charset="UTF-8" />
	</head>
	<body>
		<?php
			include 'conexion2.php';
			$consulta1= $conexion2 -> query ("DELETE FROM libreria WHERE titulo"='{$_POST['nombreOriginal']}'") or die ("Ha fallado la conexión");) 
			$conexion2 = null;
			echo 'Borrado OK!!';
		?>
	</body>
</html>