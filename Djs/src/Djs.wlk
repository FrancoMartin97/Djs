
object berghain {
	var patovaDeTurno;
	var pistas = #{};
	var personasDentroDelBoliche = #{};
	
	method patovaDeTurno(unPatova){
		patovaDeTurno = unPatova;
	}
	
	method pistas(pista){
		pistas.add(pista);
	}
	
	method entrarAlBoliche(unaPersona){
		if(patovaDeTurno.controlarSiPuedePasar(unaPersona)){
			personasDentroDelBoliche.add(unaPersona);
		}
	}
	
	method cambiarDePista(unaPersona,pistaAnterior,pistaNueva){
		if(self.entrarAlBoliche(unaPersona)){
		pistaAnterior.salirDeLaPista(unaPersona);
		pistaNueva.entrarEnLaPista(unaPersona);
		}
	}
	
	method todosBailan(dj){
		pistas.forEach({unaPista => unaPista.bailarEnLaPista(dj)});
	}
	
	method cuantosEstanBailando(){
		return pistas.forEach({unaPista => unaPista.size();})
	}
}

object vonLuka{
	
	var energia = 150;
	var diversion = 70;
	var edad = 17;
	var remeraNegra = false;
	
	method esMayor(){
		return edad>21
	}
	
	method colorRemera(){
		return remeraNegra;
	}
	
	method bailar(nuevaEnergia, nuevaDiversion){
		energia = nuevaEnergia;
		diversion = nuevaDiversion;
	}
}

object bianker {
	
	var energia = 140;
	var diversion = 80;
	var edad = 22;
	var remeraNegra = true;
	
	method esMayor(){
		return edad>21
	}
	
	method colorRemera(){
		return remeraNegra;
	}
	
	method bailar(nuevaEnergia, nuevaDiversion){
		energia = nuevaEnergia;
		diversion = nuevaDiversion;
	}
}

object gonzen {
	
	var energia = 90;
	var diversion = 15;
	var edad = 33;
	var remeraNegra = true;
	
	method esMayor(){
		return edad>21;
	}
	
	method colorRemera(){
		return remeraNegra;
	}
	
	method bailar(nuevaEnergia, nuevaDiversion){
		energia = nuevaEnergia;
		diversion = nuevaDiversion;
	}
}

object rochensen{
	
	method controlarSiPuedePasar(unaPersona){
		return unaPersona.esMayor();
	}
	
}

object rodrigsen{
	
	method controlarSiPuedePasar(unaPersona){
		return unaPersona.colorRemera();
	}
	
}

object gushtavotruccensen{
	
	method controlarSiPuedePasar(unaPersona){
		return false;
	}
}

object mainRoom {
	var personasDeLaPista = #{};
	
	method entrarEnLapista(unaPersona){
		personasDeLaPista.add(unaPersona);
	}
	
	method bailarEnLaPista(unDj){
		personasDeLaPista.forEach({unaPersona => unaPersona.bailar(40,30)});
	}
	
	method salirDeLaPista(unaPersona){
		personasDeLaPista.remove(unaPersona);
	}
}

object panoramaBar {
	
	var personasDeLaPista = #{};
	
	method entrarEnLapista(unaPersona){
		personasDeLaPista.add(unaPersona);
	}
	
	method bailarEnLaPista(unDj){
		unDj.hacerBailarALaGente(personasDeLaPista);
	}
	
	method salirDeLaPista(unaPersona){
		personasDeLaPista.remove(unaPersona);
	}
}

object darkRoom {
	
	var personasDeLaPista = #{};
	
	method entrarEnLapista(unaPersona){
		personasDeLaPista.add(unaPersona);
	}
	
	method bailarEnLaPista(unDj){
	}
	
	method salirDeLaPista(unaPersona){
		personasDeLaPista.remove(unaPersona);
	}
}


object dixon{
	
	method hacerBailarALaGente(personas){
		personas.forEach({unaPersona => unaPersona.bailar(60,120)})
	}
}

object marcelDettmann {
	
	method hacerBailarALaGente(personas){	
	personas.forEach({unaPersona => unaPersona.bailar(0,1000)})
	}
}

object tommyMunioz {
	
	method hacerBailarALaGente(personas){
		personas.forEach({unaPersona => unaPersona.bailar(80,0)})
	}
}
