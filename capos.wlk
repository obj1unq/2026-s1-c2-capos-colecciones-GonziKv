object rolando {
    const capacidad = 2
    const artefactos = []
    method encuentra(artefacto){
        self.recoletarSiPuede(artefacto)
    }
    method recoletarSiPuede(artefacto){
        if (capacidad > artefactos.size()){
            artefactos.add(artefacto.nombre())
        }  
    }
    method artefactos(){
        return artefactos
    }
    method llegarACasa(){
        castillo.depositar(artefactos)
        artefactos.clear()
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