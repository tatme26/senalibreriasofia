<?php
session_start();

//connect to database
$db=mysqli_connect("localhost","root","","librosofi");


?>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Libreria Sofia</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body>

<div class="container">
  
  <h1>
      <a href="index.html">
        <img src="images/libsofia-logo.png"/>
      </a>
<br>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
  <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav center">
        
        <li><a href="signin.html">Regresar</a></li>
      </ul>

    </div>
  </div>
</nav>


<main class="main-content">
 <div class="col-md-6 col-md-offset-4">
<?php
    if(isset($_SESSION['message']))
    {
         echo "<div id='error_msg'>".$_SESSION['message']."</div>";
         unset($_SESSION['message']);
    }
?>
<h1>Bienvenido</h1>
<br>
<div>
    <h4><br><?php echo $_SESSION['username']; ?></h4>
</div>
<br>
<a href="index1.html">Ingrese por favor</a>
</div>
</main>
</div>

</body>
</html>
