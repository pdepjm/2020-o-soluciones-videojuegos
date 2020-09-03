object play {

	method jugabilidad() = 10

	method usar() {
	}

}

object portatil {

	var jugabilidad = 8

	method jugabilidad() = jugabilidad

	method usar() {
		jugabilidad = 1
	}

}

object delfina {

	var nivelDiversion = 0
	var consolaEnMano

	method jugar(videojuego) {
		consolaEnMano.usar()
		nivelDiversion = nivelDiversion + videojuego.diversion(consolaEnMano.jugabilidad())
	}

	method agarrar(consola) {
		consolaEnMano = consola
	}

	method diversion() = nivelDiversion

}

object arkanoid {

	method diversion(jugabilidad) = 50

}

object mario {

	method diversion(jugabilidad) {
		if (jugabilidad > 5) return 100
		return 15
	}

}

object pokemon {

	method diversion(jugabilidad) = 10 * jugabilidad

}

