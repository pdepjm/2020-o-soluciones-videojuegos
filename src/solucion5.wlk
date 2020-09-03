object portatil{

  method jugabilidad(bateria){
//  (Si bateria.estadoDeCarga() es "Alto" retorna 8 sino    1)
  return 1
  }
  method usar(bateria){
  bateria.descargar()
  self.jugabilidad(bateria)
  }

}


object bateria{
  var estadoDeCarga = "Bajo"

  method estadoDeCarga(){
  return estadoDeCarga
  }
  method cargar(){
  estadoDeCarga = "Alto"
  }
  method desCargar(){
  estadoDeCarga = "Bajo"
  }
}