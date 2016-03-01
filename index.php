<?php
session_start();
if (isset($_SESSION['usuario'])){
echo '<script>location.href = "principal.php";</script>'; }else{
?>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>RISS</title>
	<link rel="stylesheet" href="css/estilo.css" />
	<script src='js/jquery.min.js'></script>
	<script type="text/javascript" src="js/jlogin.riss.js"></script>
</head>
<body>
<div class="header">
    <div class="logo" >
        <img src="img/logounivalle261x31.gif"  style="float:left; padding:12px;" alt="univalle logo">
        <div style="background:red;float:right;background:#a83032;" >
            <img src="img/cabezote_der.jpg" style="float:right; padding-right:60%;" alt="usuarios">
        </div>
	</div>        
</div>

<div class="content">
    <div id="formulario">
        <div class="text">
        <p>Esta encuesta esta orientada a explorar el conocimiento que tienen los actores del sistema sobre 
        aspectos relacionados con la presencia de atributos esenciales para la conformación de redes Integradas de Servicios 
        de Salud, basadas en Atención Primaria en Salud.  </br>  </br>       
           Usted contará con dos intentos para diligenciar la encuesta, de 30 minutos cada uno, esto con el fin de garantizar los
        parámetros técnicos definidos en el estudio; de igual manera se informa que en caso de finalizar el tiempo sin terminar
        las respuestas el cuestionario se cerrará automáticamente y en caso de iniciar el segundo intento la encuesta debe 
        ser diligenciada nuevamente desde el inicio.</br>  </br>  
       	   La información que usted suministre será usada para los fines de la investigación y sus datos personales no serán objeto 
        de análisis ni divulgación. </br>   </br>  
        	<strong>Le agradecemos de antemano su participación para contribuir en la generación de conocimientos alrededor de las Redes
        Integradas de Servicios de Salud.</strong></p>
        <input id="btnacuerdo" type="button" value="Aceptar"  style="float:right;"/>
        <br>
        </div>   <!-- text -->
		<p>
        <div id="formularioacceso" style="display:none;" ></p>        
            <input id="user" type="text" name="user"  value="" placeholder="Usuario">
            <input id="pass" type="password" name="pass"  value="" placeholder="Contrase&ntilde;a">
	        <input id="btnacceder" type="button" value="Acceder"/></br></br></br>
	        <div id="mensajelogin"></div>                
        </p></div>
	</div>
</div>

<!-- Footer -->
<div class="footer">
	<div class="wrap">
        <p>Universidad del Valle<br/>
        Vicerrectoria de Investigaciones<br/>
        Facultad de Salud - Escuela de Salud Pública<br/>
        riss.esp@correounivalle.edu.co</p>
	</div>
</div>
</body>
</html>
<?php
}
?>
