object pepita {
	var energia = 100

	method estaCansada() {
		return energia < 50
	}

	method vola(kms) {
		energia -= 10 + kms
	}

	method come(comida) {
		energia = energia + comida.energiaQueOtorga()
	}
	
	method estaFeliz() {
		return energia.between(500, 1000)
	}
	
	method cuantoQuiereVolar() {
		var valor = (energia / 5)
		if (energia.between(300, 400)) {
			valor += 10
		}
		if (energia % 20 == 0) {
			valor += 15
		}
		return valor
	}
	
	method salirAComer() {
		self.vola(5)
		self.come(alpiste)
		self.vola(5)
	}
}

object alpiste {
	var gramos = 10
	
	method energiaQueOtorga() { 
		return 4 * gramos
	}
	
	method gramos(nuevosGramos) {
		gramos = nuevosGramos
	}	
}

object manzana {
	method energiaQueOtorga() { 
		return 50
	}
}

object mijo {
	var joules = 0
	
	method energiaQueOtorga() {
		return joules	
	}
	
	method mojarse() {
		joules = 15
	}

object canelones {
	var joules = 20
	
	method agregarSalsa() {
		
	}
	
	method quitarSalsa() {
		
	}
}

	
	method secarse() {
		joules = 20
	}
}