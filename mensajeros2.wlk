import mensajeros1.*
import mensajeros3.*
object empresaDeMensajeria {
  const mensajeros = [roberto, chuckNorris, neo]
  const paquetesEnviados = #{paqueteOriginal}
  const paquetes = #{paquetito}

  method agregar(unPaquete) {
    paquetes.add(unPaquete)
  }

  method enviar(unPaquete){
    paquetesEnviados.add(unPaquete)
    paquetes.remove(unPaquete)
  }
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
}




