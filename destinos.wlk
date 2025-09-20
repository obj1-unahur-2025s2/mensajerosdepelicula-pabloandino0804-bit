import mensajeros.*
import paquetes.*
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