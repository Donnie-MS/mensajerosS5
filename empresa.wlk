import mensajeros.*
import paquetes.*
object empresaDeMensajeria{

    const mensajeros = {}

    method esMensajeriaGrande() = mensajeros.size() >= 2
    method contratar(unMensajero) {
        mensajeros.add(unMensajero)
    }
    method despedir(unMensajero) {
        mensajeros.remove(unMensajero)
    }
    method despedirATodos() {
        mensajeros.removeAll()
    }
    method elPrimerMensajeroPuedeEntregarElPaquete(destino) = paquete.sePuedeEntregar(mensajeros.first(), destino)
    method pesoDelUltimoMensajero() = mensajeros.last().peso()

}