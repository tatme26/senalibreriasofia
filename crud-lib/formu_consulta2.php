<html>

	<head>
		<title>Ejercicio- Update</title>
		<meta charset="UTF-8" />
		<link rel="stylesheet" href="style2.css">
		<style>
              a[type = button] {
				background-color: #ffffff; 
                border-radius: 30px ;
                color: rgb(0, 0, 0);
                padding: 10px 50px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 25px;
         }
         </style>
	</head>
	<body>
	 
		<?php
		  include 'conexion2.php';

		  $consulta = $conexion2 -> query("SELECT `Cantidad` FROM inventario WHERE Titulo = '{$_POST['nombreOriginal']}'") or die ("Ha fallado la conexión");
		  while ( $registro = $consulta -> fetch_assoc() ){            
			$inventario = $registro['Cantidad'];
		  }
		    $operacion = $_POST['VIP']; 
			
            $cantidadAModificar = $_POST['kantidad'];			

			if ($operacion == "+") {
				$nuevoInventario = $inventario + $cantidadAModificar;
			}else{
				$nuevoInventario = $inventario - $cantidadAModificar;
			}
            
			$consulta = $conexion2 -> query ("UPDATE inventario SET Cantidad = '$nuevoInventario' WHERE Titulo = '{$_POST['nombreOriginal']}' ") or die ("Ha fallado la conexión");
			$conexion2 = null;
		?>
	</body>
    <button id="boton"><a href="index.html"> Regresar </a></button>
</html>