import mensajeros.*
import empresa.*
object paquete {
    var pagado = 0
    
    method pagar(unaCantidad) {
        pagado = pagado + unaCantidad
    }
    method estaPago() = pagado >= 50
    method sePuedeEntregar(unMensajero, destino) = self.estaPago() && destino.puedePasar(unMensajero)
}

object paquetito {
    method estaPago() = true
    method sePuedeEntregar(unMensajero, destino) = destino.puedePasar(unMensajero)
}

object paquetonViajero {
    var pagado = 0
    method pagar(unaCantidad) {
        pagado = pagado + unaCantidad
    }
    method estaPago() = pagado >= 100
    method sePuedeEntregar(unMensajero, destino) = self.estaPago() && unMensajero.puedeViajarATodosLosDestinos()
}