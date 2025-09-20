import mensajeros.*
import destinos.*
//Parte 3
object paquetito {
  var destino = laMatrix
  
  method precio() = 0
  
  method estaPago() = true

  method cambiarDestino(unDestino) {
    destino = unDestino
  }

  method puedeEntegarse(unMensajero) {
    self.estaPago() and puenteDeBrooklyn.puedePasar(unMensajero)
  }
}

object paqueton {
  const destinos = []
  var destino = laMatrix
  var estaPago = true

  method precio() = 100

  method estaPago() = estaPago

  method cambiarDestino(unDestino) {
    destino = unDestino
  }

  method registrarPago() {
    estaPago = true
  }

  method añadirDestino(unDestino) {
    destinos.add(unDestino)
  }

  method puedeEntegarse(unMensajero) {
    self.estaPago() and puenteDeBrooklyn.puedePasar(unMensajero)
  }
}

object paquete {
  var estaPago = false
  method precio() = 50
  var destino = laMatrix
  method estaPago() = estaPago

  method cambiarDestino(unDestino) {
    destino = unDestino
  }
  
  method registrarPago() {
    estaPago = true
  }
  
  method puedeEntegarse(unMensajero) {
    estaPago and puenteDeBrooklyn.puedePasar(unMensajero)
  }
}
