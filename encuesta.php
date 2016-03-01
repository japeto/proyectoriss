<?php 
	if (!isset($_SESSION['usuario'])){
		echo '<script>location.href = "index.php";</script>'; 	
	}else{
			include_once "config.php";		
	?>
<div id='personal' class='cont' ><h3>
			Presencia de atributos esenciales para la conformación de redes integradas de servicios de salud,
			en el sistema de salud colombiano, análisis para el caso Valle del Cauca.
		</h3>
		<table>
			<tr>
				<td>Cedula: </td>
				<td><input type="text" id="cedula" placeholder="Cédula"/></td>			
			</tr>
			<tr>
				<td>Tipo de entidad: </td>
				<td><select id="entidad">
		   			<option value="-1" disabled selected="selected" >Escoger</option>                            
					<option value="1" >IPS</option>
					<option value="2" >EPS</option>
					<option value="3" >ETS</option>
				</select></td>			
			</tr>
			<tr>
				<td>Carater de la Institución: </td>
				<td><select id="caracter">
	   			<option value="-1" disabled selected="selected" >Escoger</option>                
					<option value="1" >Público</option>
					<option value="2" >Privado</option>
				</select></td>			
			</tr>	
			<tr id="labelnivel" style="display:none">
				<td><span >Nivel de atención</span></td>
				<td><select id="ips">
		   			<option value="-1" disabled selected="selected" >Escoger</option>                
					<option value="1" >I</option>
					<option value="2" >II</option>
					<option value="3" >III</option>
					<option value="4" >IV</option>
				</select></td>			
			</tr>	
			<tr id="labelregimen" style="display:none" >
				<td ><span >Régimen</span></td>
				<td><select id="eps">
		   			<option value="-1" disabled selected="selected" >Escoger</option>                
					<option value="1" >Contributivo</option>
					<option value="2" >Subsidiado</option>
				</select></td>			
			</tr>
		<tr>
			<td>Municipio</td>
			<td><select id="municipios">
   			<option value="-1" disabled selected="selected" >Escoger</option>                        
				<?php
					$municipiores = mysqli_query($con, "SELECT * FROM municipios");					
					while($resultmunicipios=mysqli_fetch_array($municipiores)){
						echo "<option value='".$resultmunicipios['nombre']."'>".$resultmunicipios['nombre']."</option>"; 
					}
				?>
			</select></td>	
		</tr>
		<tr>
		<td>Categoria del municipio</td>
		<td><select id="categoria" >
   			<option value="-1" disabled selected="selected" >Escoger</option>        
			<option value="1" >Distrito</option>
			<option value="2" >Especial</option>
			<option value="3" >[1,2,3]</option>
			<option value="4" >[4,5,6]</option>
		</select></td>
		</tr>
		<tr>				
		<td>Cargo</td>
		<td><select id="cargo">
   			<option value="-1" disabled selected="selected" >Escoger</option>
			<option value="1" >Directivo/Gerencial</option>
			<option value="2" >Contable/Financiero(Involucrado en el manejo de recursos financieros)</option>
			<option value="3" >Asistencial (Involucrado en la prestación de servicios clinicos)</option>
		</select></td>
		</tr>				
		<tr>				
		<td>Tiempo de servicio</td>
		<td><select id="servicio">
   			<option value="-1" disabled selected="selected" >Escoger</option>
			<option value="0" >Menor a 1 año</option>
			<option value="1" >Entre 1 y 5 años</option>
			<option value="2" >Mas de 5 años</option>
		</select></td>
		</tr> 
		<tr>				
		<td>Formación Academica</td>
		<td><select id="formacion">
   			<option value="-1" disabled selected="selected" >Escoger</option>
			<option value="1" >Técnico</option>
			<option value="2" >Tecnológico</option>
			<option value="3" >Profesional</option>
			<option value="3" >Maestria</option>
			<option value="4" >Doctorado</option>
		</select></td>
		</tr>																			
		</table>	
		<br/><button id="bt_0" class='next btn btn-success' type='button'>Iniciar <img src="img/btnext.png" /></button>
		</div>		
	<?php
		$res = mysqli_query($con, "SELECT * FROM preguntas");
		$rows = mysqli_num_rows($res);$i=1;	
	while($result=mysqli_fetch_array($res)){?>		
		<?php if($i >0 && $i<$rows ){?>         
			<div id='pregunta<?php echo $i;?>' class='cont'>
				<p class='preguntas' id="qname<?php echo $i;?>"><?php echo $result['pregunta'];?></p>
		<input type="radio" value="1" id='radioSi_<?php echo $result['id'];?>' name='<?php echo $result['id'];?>' /><?php echo $result['opcion1'];?><br/>
		<input type="radio" value="2" id='radioNo_<?php echo $result['id'];?>' name='<?php echo $result['id'];?>' /><?php echo $result['opcion2'];?><br/>
		<input type="radio" value="3" id='radioNs_<?php echo $result['id'];?>' name='<?php echo $result['id'];?>' /><?php echo $result['opcion3'];?>
				<br/><br/><br/>
				<button id="<?php echo 'btprev_'.$i; ?>" class='previous btn btn-success' type='button'><img src="img/btprev.png" /> Anterior</button>
				<button id="<?php echo 'btnext_'.$i; ?>" class='next btn btn-success' type='submit'>Siguiente <img src="img/btnext.png" /></button>
			</div>    
		<?php }elseif($i==$rows){ ?>
			<div id='pregunta<?php echo $i;?>' class='cont'>
				<p class='preguntas' id="qname<?php echo $i;?>"><?php echo $result['pregunta'];?></p>
		<input type="radio" value="1" id='radioSi_<?php echo $result['id'];?>' name='<?php echo $result['id'];?>' /><?php echo $result['opcion1'];?><br/>
		<input type="radio" value="2" id='radioNo_<?php echo $result['id'];?>' name='<?php echo $result['id'];?>' /><?php echo $result['opcion2'];?><br/>
		<input type="radio" value="3" id='radioNs_<?php echo $result['id'];?>' name='<?php echo $result['id'];?>' /><?php echo $result['opcion3'];?>
				<br/><br/><br/>
				<button id="<?php echo 'btprev_'.$i; ?>"  class='previous btn btn-success' type='button'><img src="img/btprev.png" /> Anterior</button>
				<button id="<?php echo 'btend_'.$i; ?>"  class='next btn btn-success' type='submit'>Terminar <img src="img/btend.png" /></button>
			</div>					  
		<?php 
		}//elseif
	$i++;	}//while
}//else
?>
</form>
