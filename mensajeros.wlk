//Destinos
object puenteDeBrooklyn {
    method puedePasar(unMensajero) = unMensajero.peso() <= 1000
}

object laMatrix {
    method puedePasar(unMensajero) = unMensajero.puedeLlamar()
}

//Mensajeros

object roberto {
    var transporteActual = bicicleta
    method transporte(unTransporte) {
        transporteActual = unTransporte
    }
    method peso() {
        return 90 + transporteActual.peso()
    }
    method puedeLlamar() = false
}

object chuckNorris {
    method peso() = 80
    method puedeLlamar() = true 
}

object neo {
    var tieneCredito = true
    method peso() = 0
    method puedeLlamar() = tieneCredito
    method cambiarCredito() {
        tieneCredito = !tieneCredito
    }
}

//transportes
object bicicleta {
    method peso() = 5 
}

object camion {
    var cantDeAcopladosActual = 0
    method cantDeAcoplados(cantidad) {
        cantDeAcopladosActual = cantidad
    }
    method peso() {
        return cantDeAcopladosActual * 500
    }
}