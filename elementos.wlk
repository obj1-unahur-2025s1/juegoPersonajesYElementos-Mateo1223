import personajes.*
import armas.*

object castillo {
  var defensa = 150.max(200)
  
  method recibirAtaque(potencia) {
    defensa -= potencia
  }

  method recibirTrabajoDe(personaje) {
    defensa += 20
    personaje.recibirValor(defensa / 5)
  }

  method defensa() = defensa
  method altura() = 20
}

object aurora {
  var estaViva = true

  method matar() {
    estaViva = false
  }

  method revivir() {
    estaViva = true
  }

  method recibirAtaque(potencia) {
    if (potencia >= 10){
        self.matar()
    }
  }

  method recibirTrabajoDe(personaje) {
    personaje.recibirValor(15)
  }

  method altura() = 1
}

object tipa {
  var altura = 8

  method crecer() {
    altura += 1
  }

  method recibirTrabajoDe(personaje) {
    self.crecer()
    personaje.recibirValor(altura * 2)
  }

  method recibirAtaque(potencia) {

  }
  method altura() = altura
}