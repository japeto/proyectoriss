var Handle_Mi_Timer = null;
var Contador = 0; //contador principal
var	cont_min = 0; //contador de minutos
var cont_seg = 0; //contador segundos

function Iniciar_Timer() {
	Contador = 1800; //aqui se programa el conteo en inversa en segundos, es decir si se requiere 30 minutos Contador = 1800
	cont_seg = Contador % 60; //el residuo de dividir los minutos seran los segundos restantes que hay que contabilizar
	
	cont_min = (Contador - cont_seg) / 60; //si al Contador total se le resta los segundos restantes dará el numero exacto de minutos para empezar el conteo
	
	Actualizar_Texto_Status_Timer("Tiempo restante: " + ("0" + cont_min).slice(-2) + ":" + ("0" + cont_seg).slice(-2)); 
	//la funcion slice se utiliza para q el contador devuelva un cero a la izquierda si el numero es menor a  10
	
	Handle_Mi_Timer = window.setInterval('Mi_Timer()', 1000);  // en milisegundos, 1000=1 segundo		
}

function Detener_Timer() {
	if(Handle_Mi_Timer!=null) {
		window.clearInterval(Handle_Mi_Timer);
		Handle_Mi_Timer = null;
		Actualizar_Texto_Status_Timer("Tiempo agotado");
	}
}

//esta funcion es la encargada de motrar el tiempo en pantalla
function Actualizar_Texto_Status_Timer(texto_tiempo) {
	document.getElementById("Status_Timer").innerHTML = texto_tiempo;
}

function Mi_Timer() {
	Contador--;
	cont_seg--;
	
	if(cont_seg < 0) //aqui disminuimos el contador de minutos
	{
		cont_min -= 1;
		cont_seg = 59; //se resetea los segundos para que empiezen a disminuir en el nuevo minuto
	}		
	
	Actualizar_Texto_Status_Timer("Tiempo restante: " + ("0" + cont_min).slice(-2) + ":" + ("0" + cont_seg).slice(-2));
	//la funcion slice se utiliza para q el contador devuelva un cero a la izquierda si el numero es menor a  10
	
	if(Contador == 0)
	{
		Detener_Timer();
	}
}