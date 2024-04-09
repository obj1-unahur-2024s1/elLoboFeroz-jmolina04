
object loboFeroz{
	
	var peso = 10
	method peso()= peso
	
	method estaSaludable(){
		return peso.between(20, 150)
	}
	
	method aumentoPeso(alimento){
		peso = peso + (10 * alimento.peso() / 100)
	}
	
	method disminuirPeso(alimento){
		peso = peso - (10 * alimento / 100)
	}
	
	method correr(){
		peso = peso - 1
	}
	
	method crisis(){
		peso = 10
	}
	
	method serCazado(){
		peso = 0
	}
	
	method soplarCasa(casa){
	 self.disminuirPeso(casa.resistencia())
	 self.disminuirPeso(casa.cantidadOcupantes())
	}
	
}


object caperucita{
	method peso()= 50 + canasta.peso()
}



object canasta{
	var cantidad = 6
	method peso(){
		return cantidad * manzana.peso()
	}
	
}



object manzana{
	var pesoManzana = 0.2
	method peso()= pesoManzana
}


object abuelita{
	method peso()=50
}


object cazador{
	var cazadora = 10
	method cazarLobo(){
		loboFeroz.serCazado()
		cazadora = cazadora - 5
	}
	
	method herirLobo(){
		loboFeroz.crisis()
		cazadora = cazadora - 2
	}
}




object casaDePaja{
	method resistencia()= 0
	method cantidadOcupantes()= 1 * chanchito.peso()
	
}

object casaDeMadera{
	method resistencia() = 5
	method cantidadOcupantes()= 2 * chanchito.peso()
	
}

object casaDeLadrillos{
	method resistencia()= 2 * ladrillo.ladrillos()
	method cantidadOcupantes()= 3 * chanchito.peso()

	
}


object ladrillo{
	var cantLadrillos = 2
	method ladrillos()= cantLadrillos
}

object chanchito{
	method peso()= 10
}
