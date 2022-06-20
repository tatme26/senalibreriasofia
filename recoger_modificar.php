
<link rel="stylesheet" href="style2.css">

<form class="formu_actualizar" action="formu_consulta2.php" method="post">	
<h2>Titulo</h2><br>
<select class="select-css" name="nombreOriginal">

<?php

include 'conexion2.php';

$consulta = $conexion2 -> query ("SELECT titulo,cantidad FROM inventario ") or die ("Ha fallado la conexión");
					while ( $registro = $consulta -> fetch_assoc()) {
						echo'<option>'.$registro['titulo'].'</option>';
					}

                    ?>                    

                    </select>
                    <h2>Cantidad</h2>
                    <input class="imput"  type="text" name="kantidad" min="10" max="75" placeholder="Inserte Cantidad" required />
                    <br>                  
                      
                    <input type="radio" name="VIP" value="+">Agregar<br><br>
                    <input type="radio" name="VIP" value="-">Sacar<br><br>
                    <button id="boton"><class="input" id="boton">Actualizar</button>
                    <button id="boton"><a href="index1.html"> Regresar </a></button>
               
                    
</form>
     


