
$(document).ready(function(){
	$("#btnacuerdo").click(function(e) {
        $("#formularioacceso").show();
		$("#btnacuerdo").hide();
    });	
	$("#user").click(function(e) {
		if(e.which == 13){
			$("#btnacceder").click();		
		}
	});
	$("#pass").keyup(function(e) {
		if(e.which ==13){
			$("#btnacceder").click();		
		}
	});		
	$("#btnacceder").click(function(e) {
		if($("#user").val() !="" && $("#pass").val() !=""){
			
		var dataString = "user="+$("#user").val()+"&pass="+$("#pass").val();       
		$.ajax({
			url: "acceder.php",
			type: "POST",
			data: dataString,
			beforeSend: function(e){
				$('#btnacceder').val("Accediendo...")
			},
			success: function(response){
				var objects = jQuery.parseJSON(response);				
				if(objects.result){
					
					$('body').load('principal.php',function() {
						$("#nombrecompleto").html(objects.nombreuser)
					});											
				}else{
					$('#btnacceder').val("Acceder")
					$('#mensajelogin').html(objects.problem);
				}
			}		
		});
		}else {
			$("#user").focus()
			$('#mensajelogin').html("Los campos estan vacios, escriba un nombre de usuario y una contraseña");
			return;
		}
		
    });
});
