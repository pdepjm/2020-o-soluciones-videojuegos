object delfina {

	var nivelDeDiversion = 0
	var consola = play

	method agarrar(consolaEnMano) {
		consola = consolaEnMano
	}

	method jugar(videojuego) {
		nivelDeDiversion = nivelDeDiversion + videojuego.diversionAportada(consola)
		consola.usar()
	}

	method diversion() = nivelDeDiversion

}

object play {

	method jugabilidad() = 10

	method usar() {
	}

}



object portatil {

	var bateriaBaja = false

	method jugabilidad() {
		if (bateriaBaja) {
			return 1
		} else {
			return 8
		}
	}

	method usar() {
		bateriaBaja = true
	}

}


object arkanoid {

	method diversionAportada(consola) = 50

}

object mario {

	method diversionAportada(consola) {
		if (consola.jugabilidad() > 5) // Si bien podría haber hecho consola.jugabilidadNecesaria(), estaría repitiendo lógica al implementar de la misma forma el método en los dos tipos de consola
		{
			return 100
		} else {
			return 15
		}
	}

}

object pokemon {

	method diversionAportada(consola) = 10 * consola.jugabilidad()

}

