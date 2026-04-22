object rolando {
    var capacidad = 2
    const artefactos = #{}
    const historiaDeEncuentro = []
    var poderBase = 0
    var morada = castillo

    method morada(_morada){
        morada = _morada
    }

    method morada(){
        return morada
    }

    method poderBase(_poderBase){
        poderBase = _poderBase
    }
    
    method poderBase(){
        return poderBase
    }

    method pelear(){
        artefactos.forEach{artefacto => artefacto.utilizar()}
        poderBase += 1
    }

    method poder(){
        return poderBase + artefactos.sum{artefacto => artefacto.poder()}
    }
    
    method historiaDeEncuentro(){
        return historiaDeEncuentro
    }

    method capacidad(_capacidad){
        capacidad = _capacidad
    }

    method encontrar(artefacto){
        historiaDeEncuentro.add(artefacto)
        self.validarRecolectar()
        artefacto.personaje(self)
        artefactos.add(artefacto)
    }

    method validarRecolectar(){
        if (capacidad <= artefactos.size()){
            self.error("No tiene capacidad para agarrar el artefacto") }
    }

    method artefactos() {
        return artefactos
    }

    method llegarACasa(){
        morada.depositar(artefactos)
        artefactos.clear()
    }

    method posesiones(){
        return  castillo.artefactos() + artefactos.asList()
    }

    method poseeArtefacto(artefacto){
        return (self.posesiones()).contains(artefacto)
    }
}
object castillo{
    const artefactos = []
    method depositar(artefactosADepositar){
        artefactos.addAll(artefactosADepositar)
    }
    method artefactos(){
        return artefactos
    }
}
