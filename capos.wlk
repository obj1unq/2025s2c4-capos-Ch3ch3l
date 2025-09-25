object ronaldo {
    const maximosArtefactosAlPrincipio = 2
    var maximosArtefactos = maximosArtefactosAlPrincipio
    const artefactosEncima = []
    const artefactosEnCastillo = []
    const artefactosQueEncontro = []

    method sinEspacio() = artefactosEncima.size() >= maximosArtefactos
    method tieneArtefacto(artefacto) = (artefactosEncima.contains(artefacto))
    method artefactosQuePosee() = artefactosEncima
    method artefactosEnCastillo() = artefactosEnCastillo
    method tieneArtefactoEnCastillo(artefacto) = artefactosEnCastillo.contains(artefacto)
    method artefactosQueEncontro() = artefactosQueEncontro

    method nuevaCapacidadDeArtefactos(num) {
        maximosArtefactos = num
    }

    method agregarArtefacto(artefacto) {
        if(not self.sinEspacio()) {
            artefactosEncima.add(artefacto)
            artefactosQueEncontro.add(artefacto)
        }
        else {
            artefactosQueEncontro.add(artefacto)
        }
    }
    method dejarArtefactos(lugar){
        lugar.almacenar(artefactosEncima)
        artefactosEncima.clear()
        artefactosEnCastillo.addAll(lugar.todosLosArtefactos())
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
    const almacenamiento = []

    method todosLosArtefactos() = almacenamiento
    method tieneArtefacto(artefacto) = almacenamiento.contains(artefacto)

    method almacenar(artefactos) {
        almacenamiento.addAll(artefactos)
    }


}