object play {

	var jugabilidad = 10

	method jugabilidad() {
		return jugabilidad
	}

	method usar() {
	}

}

object portatil {

	var jugabilidad = 8
	var bateriaBaja = false

	method jugabilidad() {
		return jugabilidad
	}

	method usar() {
		bateriaBaja = true
		jugabilidad = 1
	}

}

//////////////
object mario {

// Usar if

//	method diversion(consola) {
//		consola.jugabilidad() > 5
//		return 100
//	}
//
//	method diversion(consola) {
//		consola.jugabilidad() <= 5
//		return 15
//	}

}

