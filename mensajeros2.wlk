import mensajeros1.*
object empresaDeMensajeria {
  const property mensajeros = ["roberto","neo","chuck"]

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




