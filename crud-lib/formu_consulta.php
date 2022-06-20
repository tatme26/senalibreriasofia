<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Consultar</title>
    <link rel="stylesheet" href="style2.css">
</head>
<body>
        <!--formulario donde solo se pida el código del libro -->
        <div class="formulario">
    <form action="consulta1.php" method="post"> 
        
        <div class="part 1"> 
            <h4>Código</h4>
             <input class="imput" type="number" name="codigo" size="20" placeholder="Escriba el Código" required /><br/> 
            <h4>Título</h4>
            <input class="imput"  type="text" name="titulo" min="10" max="75" placeholder="" readonly="readonly" value="<?php echo @$titulo ?>" required  /><br/> 
        </div>
        <div class="part 2"> 
		<h4>Autor</h4>
        <input class="imput"  type="text" name="autor" min="10" max="75" placeholder="" readonly="readonly" value="<?php echo @$autor ?>" required  /><br/>
        <h4>Género</h4>
        <input class="imput"  type="text" name="genero" readonly="readonly" value="<?php echo @$genero ?>"> 
        </div>
        <br>
        <div class="part 3"> 
        <h4>Editorial</h4>
        <input  class="imput" type="Text" name="editorial" size="20" placeholder="" readonly="readonly" value="<?php echo @$editorial;?>" required /><br/>
        <h4>Cantidad</h4>
        <input class="imput"  type="number" name="cantidad" size="20" placeholder="" readonly="readonly" value="<?php echo @$cantidad ?>" required /><br/>
        </div>
        <div class="part 4"> 
        <h4>Fecha publicación</h4>
        <input class="imput"  type="date" name="fecha_publicacion" size="20" placeholder="" readonly="readonly" value="<?php echo @$fecha_publicacion ?>" required /><br/>
        <h4>Edición</h4>
        <input class="imput"  type="text" name="edicion" size="20" placeholder="" readonly="readonly" value="<?php echo @$edicion ?>" required /><br/>
        <br><br>
        </div>
        <div class="boton1">
        <button id="boton" type="submit">Consultar</button>
        <button id="boton"><a href="index.html"> Regresar </a></button>
    </div>
    </form>
</div>


</body>
</html>
