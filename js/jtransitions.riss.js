
$(document).ready(function(){
    var currentPage = 0;
    var numPerPage = 1;    
    var $divs = $(this);
    $divs.bind('repaginate', function() {
        $divs.find('#aplicacion div').hide().slice(currentPage * numPerPage, (currentPage + 1) * numPerPage).show();
    });
    $divs.trigger('repaginate');
    var numDivs = $divs.find('#aplicacion div').length;
    var numPages = Math.ceil(numDivs / numPerPage);	
    var $pager = $('<div class="pager"></div>');
    for (var page = 0; page < numDivs+1; page++) {
         if(page == 0){
				$("#bt_"+page+"").bind('click', {
            	newPage: page
        		}, function(event) {
	            currentPage = event.data['newPage']+1;
	            $divs.trigger('repaginate');
	            $(this).addClass('active').siblings().removeClass('active');
        		});
        		
         }else if(page == (numDivs-1)){
				$("#btprev_"+page).bind('click', {
	            	newPage: page
        		}, function(event) {
					currentPage = event.data['newPage'] - 1;            
					$divs.trigger('repaginate');
					$(this).addClass('active').siblings().removeClass('active');
        		});
        		         	
				$("#btend_"+page).bind('click', {
            	newPage: page
        		}, function(event) {
                                /*GUARDA LA ENCUESTA*/
					var respuestas = $('input:radio[name=1]:checked').val() +" , "; 			// 1
					for(index=2;index< numDivs-1;index++){									// 2 --> x<61
						if($('input:radio[name='+index+']:checked').val() != undefined){ respuestas += $('input:radio[name='+index+']:checked').val() +" , ";
						}else{respuestas += "-1 , "; }
					}
					if($('input:radio[name='+(numDivs-1)+']:checked').val() != undefined){ respuestas += $('input:radio[name='+(numDivs-1)+']:checked').val();     
					}else{respuestas += "-1 "; }							// 61
					$.ajax({
						url: "persistencia.php",
						type: "POST",
						data: "respuestas="+respuestas,
						beforeSend: function(e){
							/*mensaje de guardando con el bar de ajax*/
						},
						success: function(response){
							var objects = jQuery.parseJSON(response);				
							if(objects.result){
								/**pagina de despedide*/
								alert ("Le agradecemos de antemano su participación para contribuir en la generación de conocimientos alrededor de las Redes Integradas de Servicios de Salud.");                   				
								$('body').load('logout.php');								
							}else{
								//$('body').load('principal.php');																
							}
						}		
					});					
        		});
         }else{         	
				$("#btprev_"+page).bind('click', {
	            	newPage: page
        		}, function(event) {
					currentPage = event.data['newPage']-1;          
					$divs.trigger('repaginate');
					$(this).addClass('active').siblings().removeClass('active');
        		});
        		  	
				$("#btnext_"+page).bind('click', {
	            	newPage: page
        		}, function(event) {
					currentPage = event.data['newPage']+1;
					$divs.trigger('repaginate');
					$(this).addClass('active').siblings().removeClass('active');
        		});
        	}
    }
	$('#cedula').on('input', function() {
		var input=$(this);
		if(!$.isNumeric( input.val())){
			$(this).val("");
			$("#bt_0").attr('disabled','true');			
		}else{
			$("#bt_0").removeAttr("disabled");					
		}
	});	
	
	$("#bt_0").attr('disabled','true');

	
    $("#bt_0").click(function(e){
		var dataString = "cedula="+$("#cedula").val()+"&entidad="+$("#entidad option:selected").val()
		+"&caracter="+$("#caracter option:selected").val()+"&ips="+$("#ips option:selected").val()+"&eps="+$("#eps option:selected").val()
		+"&cargo="+$("#cargo option:selected").val()+"&servicio="+$("#servicio option:selected").val()+"&formacion="+$("#formacion option:selected").val()		
		+"&municipios="+$("#municipios option:selected").val()+"&categoria="+$("#categoria option:selected").val();
		//alert (dataString);
		$.ajax({
			url: "persistencia.php",
			type: "POST",
			data: dataString,
			success: function(response){
				//alert (response)
				var objects = jQuery.parseJSON(response);				
				if(objects.result){									
					/*guardo la primera parte de la encuesta*/
				}else{
				}
			}		
		});
    });
	
});

