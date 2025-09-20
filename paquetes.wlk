import mensajeros.*
//Parte 3
object paquetito {
  var mensajero = neo

  method precio() = 0

  method mensajero(unMensajero){
    mensajero = unMensajero
  }

}
object paquetonViajero {
  const destinos = []
  var mensajero = neo

  method precio() = 100

  method mensajero(unMensajero){
    mensajero = unMensajero
  }

  method añadirDestino(unDestino) {
    destinos.add(unDestino)
  } 
}
object paqueteOriginal {
  var mensajero = neo

  method precio() = 50

  method mensajero(unMensajero){
    mensajero = unMensajero
  }
}
