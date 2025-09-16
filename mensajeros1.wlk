object neo  {
  var credito = 100
  method peso() = 0
  method cambiarCredito(unCredito) {
    credito = unCredito
  }
  method puedeLlamar() = credito > 1
}
object chuckNorris {
  method peso() = 80
  method puedeLlamar() = true
}
object roberto {
  const peso = 90
   var vehiculo = bicicleta
  method peso() = peso
  method cambiarVehiculo(unvehiculo){
    vehiculo = unvehiculo
  }
  method vehiculo(unVehiculo){
    self.peso() + vehiculo.peso()
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
  var pago = true
  method cambiarSiEstaPago(unPago) {
    pago = unPago
  }
  method estaPago() = pago
}

object puenteDeBrooklyn {
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