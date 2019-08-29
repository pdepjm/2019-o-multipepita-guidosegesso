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
	
	method haceLoQueQuieras() {
		if (self.estaCansada() ) {
			self.come(alpiste)
		}
		if (self.estaFeliz() ) {
			self.vola(8)
		}
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
	var estaMojado = false
	
	method energiaQueOtorga() {
		return if (estaMojado) 15 else 20
	}
	
	method mojarse() {
		estaMojado = true
	}

	method secarse() {
		estaMojado = false
	}
}

object canelones {
	var tieneSalsa = false
	var tieneQueso = false
	
	method energiaQueOtorga() {
	return if(tieneSalsa && tieneQueso) 32
		else if(tieneSalsa) 25
			else if(tieneQueso) 27
				else 20 
	}
	
	method ponerSalsa() {
		tieneSalsa = true
	}
	
	method sacarSalsa() {
		tieneSalsa = false
	}
	
	method ponerQueso() {
		tieneQueso = true
	}
	
	method sacarQueso() {
		tieneQueso = false
	}
}

object roque {
	method entrenar(ave) {
		ave.vola(10)
		ave.come(alpiste)
		ave.vola(5)
		ave.haceLoQueQuieras()
	}
}
