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

	getHora(){
		var horaBien;
		if (this.hora.length == 4){
			horaBien = this.hora.substring(0,2) + ":" + this.hora.substring(2,4) + "h";
		}else{
			horaBien = this.hora.substring(0,1) + ":" + this.hora.substring(1,3) + "h";
		}

		return horaBien;
	}

	getFechaDate(){
		return this.fecha;
	}

	getFecha(){
		var day = this.fecha.getDate();
		var month = this.fecha.getMonth() + 1;
		var year = this.fecha.getFullYear();

		return day + "/" + month + "/" + year;
	}

	getHTML(){
		return "<strong>"+this.trabajo+"</strong>"+" " + this.persona+ " " + this.getFecha()+" HORARIO: " + this.getHora()+ " DURACIÓN: " + this.duracion + " VALOR: " + this.valor;
	}
	
}

