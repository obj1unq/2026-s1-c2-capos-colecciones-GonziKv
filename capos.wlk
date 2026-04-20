object rolando {
    var capacidad = 2
    const artefactos = #{}
    const historiaDeEncuentro = []
    
    method historiaDeEncuentro(){
        return historiaDeEncuentro
    }
    method capacidad(_capacidad){
        capacidad = _capacidad
    }

    method encontrar(artefacto){
        historiaDeEncuentro.add(artefacto)
        self.validarRecolectar()
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
        castillo.depositar(artefactos)
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
