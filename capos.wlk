object ronaldo {
    const maximosArtefactosAlPrincipio = 2
    var maximosArtefactos = maximosArtefactosAlPrincipio
    var artefactos = []

    method sinEspacio() = artefactos.size() >= maximosArtefactos
    method tieneArtefacto(artefacto) = artefactos.contains(artefacto)

    method nuevaCapacidadDeArtefactos(num) {
        maximosArtefactos = num
    }

    method agregarArtefacto(artefacto) {
        if(not self.sinEspacio()) {
            artefactos.add(artefacto)
        }
    }
    method dejarArtefactos(lugar){
        lugar.almacenar(artefactos)
        artefactos = []
    }

}
object espadaDelDestino{

}

object libroDeHechizos{

}

object collarDivino{

}

object armaduraDeAceroValyrio{
     
}

object castilloDePiedra {
    var almacenamiento = []

    method tieneArtefacto(artefacto) = almacenamiento.contains(artefacto)

    method almacenar(artefactos) {
        almacenamiento.addAll(artefactos)
    }


}