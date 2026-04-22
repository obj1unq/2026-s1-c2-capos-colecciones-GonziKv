import moradas.*
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
        return poderBase + artefactos.sum{artefacto => artefacto.poder(self)}
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
    
    method poderArtefactoMasFuerteEnReserva(){
        return (morada.artefactoMasFuerte(self)).poder(self)
    }

    method posesiones(){
        return  morada.artefactos() + artefactos.asList()
    }

    method poseeArtefacto(artefacto){
        return (self.posesiones()).contains(artefacto)
    }
    
    method leGana(enemigo){
        return enemigo.poder() < self.poder()
    }

    method puedeConquistar(moradaAConquistar){
        return self.leGana(moradaAConquistar.lider())
    }
    method esArtefactoFatal(enemigo){
        return artefactos.any({artefacto => artefacto.poder(self) > enemigo.poder()})
    }
    method artefactoFatal(enemigo){
        if (artefactos.any({artefacto => artefacto.poder(self) > enemigo.poder()})){
            return (artefactos.find({artefacto => artefacto.poder(self) > enemigo.poder()}))
            } else{
            self.error("no hay artefacto que valga")
            }
    }
}

