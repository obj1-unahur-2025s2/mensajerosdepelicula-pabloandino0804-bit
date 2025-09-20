import mensajeros.*
import destinos.*
import paquetes.*

object empresaDeMensajeria {
  const mensajeros = [roberto, chuckNorris, neo]
  const paquetesEnviados = [paqueteOriginal]
  const paquetesPendientes = []
  const paquetes = [paquetito]

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
  method unoDeEllosPuedenPasar() {
    return mensajeros.any{mensajero => puenteDeBrooklyn.puedePasar(mensajero)}
  }

  // 2)
  method todosPuedenLLevarElPaquete(unPaquete) {
    return mensajeros.all{mensajero => puenteDeBrooklyn.puedePasar(mensajero)}
  }

  // 3)
  method pesoTotal(){
    return mensajeros.sum{mensajero => mensajero.peso()}
  }

  // 4)
  method enviarPaqueteAUnMensajeroSiHay() {
    const empleado = mensajeros.findOrElse{empleado => puenteDeBrooklyn.puedePasar(empleado)} {paquetesPendientes.add(paquetes.first())}
    paquetes.first().mensajero(empleado)
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

  method cantPaquetes(){
    return paquetes.size()
  }
}




