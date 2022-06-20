<html>
	<head>
		<title>DELETE</title>
		<meta charset="UTF-8" />
        <link rel="stylesheet" href="style2.css">
        
    </head>
	<body>
		
		<form action="eliminar_prueba.php" method="post">
            <select class="select-css" name="nombreOriginal">
			
			
			
			<?php
				include 'conexion2.php';
				$consulta = $conexion2 -> query ("SELECT `titulo` FROM inventario") or die ("Ha fallado la conexión");
					while ( $registro = $consulta -> fetch_assoc()) {
						echo'<option>'.$registro['titulo'].'</option>';
					}
			?>
			
			
			</select>	
			
			
			<h5>Titulo</h5> 	
			<br>
					
            <button id="boton" type="submit">Borrar</button>
            <button id="boton"><a href="index1.html"> Regresar </a></button>

		</form>        
        
	</body>
</html>