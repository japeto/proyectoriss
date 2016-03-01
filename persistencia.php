<?php
	session_start();
	include_once "config.php";	
	
	if(isset($_POST['respuestas'])){
					
		$respuestas=mysqli_real_escape_string($con,$_POST['respuestas']); 				
		
		$exits = mysqli_query($con,"SELECT * FROM encuesta WHERE idusuario= ".$_SESSION['idusuario']." ") ;					
		if(mysqli_num_rows($exits)>0){
			
			$query = '';
			$index =1;
			$cols = explode(",", $respuestas);
			foreach($cols as $col) {
				$query.= "p".$index." = ".$col.",";
				$index++;
			}
			$query= substr($query, 0, -1);
			$update=mysqli_query($con,"UPDATE encuesta set ".$query." WHERE idusuario= ".$_SESSION['idusuario']." ");	
								
			if($update){									
				$arr = array ('result'=>true);
				echo json_encode($arr);
			}else {
				$arr = array ('result'=>false,'problem'=>$update);
				echo json_encode($arr);			
			}
			
		}else{
			
			$row = "null, ".$_SESSION['idusuario']." , ".$respuestas;
			$insert=mysqli_query($con,"INSERT INTO encuesta VALUES(".$row.") ");	
								
			if(mysqli_affected_rows($con)>0){									
				$arr = array ('result'=>true);
				echo json_encode($arr);
			}else {
				$arr = array ('result'=>false,'problem'=> explode(",", $row));
				echo json_encode($arr);			
			}	
					
		}
	}	
				
	if(isset($_POST['cedula']) && isset($_POST['entidad']) 
			&& isset($_POST['cargo']) && isset($_POST['servicio'])
				&& isset($_POST['formacion']) && isset($_POST['municipios']) && isset($_POST['categoria'])){
					
		$cedula=mysqli_real_escape_string($con,$_POST['cedula']); 		
		$entidad=mysqli_real_escape_string($con,$_POST['entidad']); 		
		$caracter=mysqli_real_escape_string($con,$_POST['caracter']); 				
		$ips=mysqli_real_escape_string($con,$_POST['ips']); 												
		$eps=mysqli_real_escape_string($con,$_POST['eps']); 												
		$cargo=mysqli_real_escape_string($con,$_POST['cargo']); 																
		$servicio=mysqli_real_escape_string($con,$_POST['servicio']); 				
		$formacion=mysqli_real_escape_string($con,$_POST['formacion']); 				
		$municipios=mysqli_real_escape_string($con,$_POST['municipios']); 				
		$categoria=mysqli_real_escape_string($con,$_POST['categoria']); 			
									
		$insert=mysqli_query($con,"UPDATE usuario SET cedula='".$cedula."', municipio=".$municipios.",  tipo_entidad=".$entidad.", "
						."caracter=".$caracter.", IPS=".$ips.", EPS=".$eps.", categoria=".$categoria.", cargo=".$cargo.", t_servicio=".$servicio.", "
						." formacion=".$formacion." WHERE  idusuario=".$_SESSION['idusuario']."");
						
		if(mysqli_affected_rows($con)>0){									
			$arr = array ('result'=>true);
			echo json_encode($arr);
		}else {
			$arr = array ('result'=>false,'problem'=> mysqli_error($con));
			echo json_encode($arr);			
		}
	}

	
?>