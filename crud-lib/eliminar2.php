<html>
	<head>
		<title>Ejercicio - DELETE</title>
		<meta charset="UTF-8" />
		<title>Eliminar</title>
    <link rel="stylesheet" href="style2.css">
	

	</head>
	<body>
	<form action="eliminar1.php" method="post">
			<select class="select-css" name="nombreOriginal">
			<?php
				include 'conexion.php';
				$consulta = $conexion2 -> query ("SELECT titulo FROM inventario ORDER BY titulo ASC") or die ("Ha fallado la conexión");
					while ( $registro = $consulta -> fetch_assoc()) {
						echo'<option>'.$registro['titulo'].'</option>';
					}
			?>
			<div class="formulario">
        <form action="eliminar_prueba.php" method="post"> 
            <h4 id="Codigo"></h4>
        <SELECT name="titulo" method="post" > 
			
		
            
        
    </div>
</body>
</html>
			</select>			
			<input type="submit" value="Borrar!!" />
		</form>
	</body>
</html>