import mensajeros.*
import destinos.*
import paquetes.*

object empresaDeMensajeria {
  const mensajeros = []
  const paquetesEnviados = []
  const paquetesPendientes = []
  const paquetes = [paquetito]

  method mensajeros() = mensajeros
  method paquetesEnviados() = paquetesEnviados
  method paquetesPendientes() = paquetesPendientes
  method paquetes() = paquetes

  // Funciones de la parte 2
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
    return mensajeros.aslist().last().peso()
  }

  // Funciones de la parte 3
  // 1)
  method algunoPuedeEntregar(unPaquete) {
    return mensajeros.any{mensajero => unPaquete.puedeEntregarse(mensajero)}
  }

  // 2)
  method todosPuedeEntregar(unPaquete) {
    return mensajeros.all{mensajero => unPaquete.puedeEntregarse(mensajero)}
  }

  // 3)
  method pesoTotal(){
    return mensajeros.sum{mensajero => mensajero.peso()}
  }

  // 4)
  method enviarPaqueteAUnMensajeroSiHay(unPaquete) {
    if(self.algunoPuedeEntregar(unPaquete)) {
      paquetesEnviados.add(unPaquete)
    }
    else{
      paquetesPendientes.add(unPaquete)
    }
  }

  // 5)
  method facturacion() {
    return paquetesEnviados.sum{paquete => paquete.precio()}
  }

  // 6)
  method enviarTodosLosPaquetes() {
    paquetes.forEach{paquete => paquetesEnviados.add(paquete)}
    paquetes.clear()
  }

  // 7) 
  method paquetePendienteMasCaro() {
    return paquetesPendientes.max{paquete => paquete.precio()}
  }

  method EnviarPaquetePendiente(unPaquete) {
    paquetesPendientes.remove(unPaquete)
    paquetesEnviados.add(unPaquete)
  }
}




