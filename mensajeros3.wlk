//Parte 3
object paquetito {
  method precio() = 0
  var property propietario = ninguno 

}

object paquetonViajero {
  const destinos = #{} 
  method precio() = 100
  method añadirDestino(unDestino) {
    destinos.add(unDestino)
  }
  var property propietario = ninguno 
}

object paqueteOriginal {
  method precio() = 50
  var property propietario = ninguno 
}

object ninguno {
  method peso() = 0
}