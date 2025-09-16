//parte uno
object neo  {
  var tieneCredito = true
  method peso() = 0
  method cambiarCredito(unCredito) {
    tieneCredito = unCredito
  }
  method puedeLlamar() = tieneCredito
 }
object chuckNorris {
  method peso()
  = 80
  method puedeLlamar() = true
}
object roberto {
  var vehiculo = bicicleta
 method pesoTotal() = self.peso() + vehiculo.peso()
  method peso() = 90
  method cambiarVehiculo(unvehiculo){
    vehiculo = unvehiculo
  }
  method puedeLlamar() = false
}
object bicicleta {
  method peso() = 5
}
object camion {
   var acople = 1
  method peso() 
    = acople * 500
  method acople(unAcople) {
    acople = unAcople
  }
}
object paquete {
  var pago =true
  method cambiarSiEstaPago(unPago) {
    pago = unPago
  }
  method estaPago() = pago
}

object puentedeBrooklyn {
  method puedePasar(mensajero) {
   return mensajero.peso().between(0, 1000)
  }
  method puedeEntregarPaquete(){
    return paquete.estaPago()
  }
}
object laMatrix {
  method puedePasar(mensajero) {
    return mensajero.puedeLlamar()
  }
method puedeEntregarPaquete(){
    return paquete.estaPago()
  }
}




//parte dos
object empresaDeMensajeria {
  const property mensajeros = [roberto,neo,chuckNorris]

method contratar(unMensajero) {
  mensajeros.add(unMensajero)
}
method despedir(unMensajero) {
  mensajeros.remove(unMensajero)
}

method despedirATodos() {
  mensajeros.clear()
}

method esLaMensajeriaGrande() {
  return mensajeros.size() > 2
}

method elPrimerEmpleadoPuedeEntregar() {
  return mensajeros.first().puedePasar()
}

method pesoUltimoMensajero() {
  return mensajeros.last().peso()
}
}




