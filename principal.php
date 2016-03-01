<?php
session_start();
if (!isset($_SESSION['usuario'])){
echo '<script>location.href = "index.php";</script>'; }else{
?>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
	<title>RISS</title>
	<link rel="stylesheet" href="css/estilo.css" />
	<script src='js/jquery.min.js'></script>
	<script type="text/javascript" src="js/jlogin.riss.js"></script>
	<script type="text/javascript" src="js/jtransitions.riss.js"></script>	
</head>
<body>
<div class="header">
    <div style="float:left;" >
	   <img src="img/logounivalle261x31.gif"  style="padding:12px;background:#fff;" alt="univalle logo">
    </div>
     <div class="footer" style="float:right;background:#a83032;padding:8px 50px 18px 40px;" >
	   <span>Usted se a identificado como:</span></br>
	  <i><span id="nombrecompleto" style="color:#fff;"><?php echo $_SESSION['nombrecompleto'] ?> </span>
      <a href="logout.php">(cerrar sesion)</a>
      </i>
    </div> 
    <div style="float:right;background:#a83032;color:white;" >
       <img src="img/cabezote_der.jpg"  style="float:right;" alt="usuarios" />
    </div>
</div>
<div class="content">
    <div id="aplicacion">
    <?php 	include("encuesta.php"); ?>
	</div>
</div>
<!-- Footer -->
<div class="footer">
	<div class="wrap">
        <p>Universidad del Valle<br/>
        Vicerrectoria de Investigaciones<br/>
        Facultad de Salud - Escuela de Salud P&uacute;blica<br/>
        riss.esp@correounivalle.edu.co</p>
	</div>
</div>
</body>
</html>
<?php
}
?>