class Servei {

	constructor(trabajo, persona, fecha, hora, duracion, valor){
		this.trabajo=trabajo;
		this.persona=persona;
		this.fecha=fecha;
		this.hora=hora;
		this.duracion=duracion;
		this.valor=valor;
	}

	valor(){
		return this.persona + " -> " + this.valor;
	}


	duracion(){
		return this.persona + " -> " + this.duracion;
	}

	info(){
		return this.persona + " / " + this.hora + " / " + this.duracion + " / " +
		this.valor;
	}
	
}