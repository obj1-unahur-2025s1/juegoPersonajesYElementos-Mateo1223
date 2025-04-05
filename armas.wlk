object ballesta {
  var flechas = 10

  method usar() {
    flechas -= 1
  }
  
  method estaCargada() = flechas >= 1
  method flechas() = flechas
  method potencia() = 4
}

object jabalina {
  var estaCargada = true

  method usar() {
    estaCargada = false
  }

  method potencia() = 30
}