<?php
include_once "config.php";
if (isset($_POST['user']) && isset($_POST['pass'])){
	
	$user = mysqli_real_escape_string($con, $_POST['user']);
	$pass = md5(mysqli_real_escape_string($con, $_POST['pass']));
	$consulta = mysqli_query($con, "SELECT * FROM usuario WHERE user = '".$user."' AND password = '".$pass."' ");
	
	$rows=mysqli_fetch_array($consulta);
	
	if (mysqli_num_rows($consulta) > 0 && $rows['intentos'] < 2)	{
		
		$state=mysqli_query($con, "UPDATE usuario SET INTENTOS= INTENTOS+1 WHERE  user = '".$user."' AND password = '".$pass."' ");
	
		session_start();		
		$_SESSION["usuario"] = $user;
		$_SESSION["nombrecompleto"] = $rows['nombre'];		
		$_SESSION['idusuario']= $rows['idusuario'];		
		$_SESSION["time"] = time();				
		$result =array('result'=>true,'nombreuser'=>$rows['nombre'],'$state'=>$state);
		echo json_encode($result);

	}else if( $rows['intentos'] == 2){
		
		$result =array('result'=>false,'problem'=>"Usted ya ha intentado mas de dos veces");
		echo json_encode($result);		
		
	}else{
		$result =array('result'=>false,'problem'=>"Usted ".$user." no es un usuario valido");
		echo json_encode($result);		
	}
}
?>