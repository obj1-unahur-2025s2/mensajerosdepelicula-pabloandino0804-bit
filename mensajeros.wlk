import destinos.*
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
  method peso() = peso + vehiculo.peso()
  method cambiarVehiculo(unvehiculo){
    vehiculo = unvehiculo
  }
  method vehiculo(unVehiculo){
    self.peso() + vehiculo.peso()
  }
  method puedeLlamar() = false
}

//Vehiculos de roberto
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