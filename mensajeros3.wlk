import mensajeros1.*
//Parte 3
object paquetito {
  method precio() = 0

}

object paquetonViajero {
  const destinos = #{} 
  method precio() = 100
  method añadirDestino(unDestino) {
    destinos.add(unDestino)
  } 
}

object paqueteOriginal {
  method precio() = 50 
}
