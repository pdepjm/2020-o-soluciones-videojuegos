object delfina {
  var diversion = 0
  var consola = play
  
  method diversion() {
    return diversion
  }
  
  method agarrar(unaConsola) {
    consola = unaConsola
  }
  
  method jugar(unVideojuego) {
    unVideojuego.jugarEn(consola)
    diversion = diversion + unVideojuego.diversion()
    consola.usar()
  }
}



object play {
  method jugabilidad() {
    return 10
  }
  method usar(){
  	
  }
}





object portatil {
  var jugabilidad = 8
  
  method jugabilidad() {
    return jugabilidad
  }
  
  method usar(){
    jugabilidad = 1
  }
}








object arkanoid {
  method jugarEn(unaConsola) {
  	// No es necesario guardarse nada
  }
  method diversion(){
    return 50
  }
}

object pokemon {
  var consola
  
  method jugarEn(unaConsola) {
    consola = unaConsola
  }
  // 3 formas que tiene un objeto de conocer a otros
  // 1. Atributos
  // 2. Parámetro
  // 3. Globales x
  method diversion(){
    return 10 * consola.jugabilidad()
  }
}

object mario {
  var consola
  method jugarEn(unaConsola) {
    consola = unaConsola
  }
  method diversion(){
    if (consola.jugabilidad() > 5) {    	
      return 100
    }
    return 15
  }
}
