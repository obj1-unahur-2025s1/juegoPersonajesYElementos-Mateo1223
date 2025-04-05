import armas.*
import elementos.*


object luisa {
  method tipo() = "jugadora" 
}

object folki {
  var arma = ballesta

  
  method elegirArma(unArma) {
    arma = unArma
  }

  method encontrar(elemento) {
    if (self.arma().estaCargada()){
      elemento.recibirAtaque(self.arma().potencia())
      self.arma().usar()
    }
  }

  method tipo() = "guerrero"
  method arma() = arma
}

object mario {
  var valor = 0
  var ultimoElementoEncontrado = null

  method enctontrar(elemento) {
    elemento.recibirTrabajoDe(self)
    ultimoElementoEncontrado = elemento
  }

  method recibirValor(cantidadValor) {
    valor += cantidadValor
  }
  
  method esFeliz() = valor >= 50 or ultimoElementoEncontrado.altura() >= 10
  method valor() = valor
  method tipo() = "trabajador"
  
}
