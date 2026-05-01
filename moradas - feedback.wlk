import enemigos.*
object fortaleza{
    var lider= caterina
    method lider(_lider){
        lider = _lider
    }

    method lider(){
        return lider
    }
}
object palacio{
    var lider= archibaldo
    method lider(_lider){
        lider = _lider
    }
    method lider(){
        return lider
    }
}
object torre{
    var lider = astra
    method lider(_lider){
        lider = _lider
    }
    method lider(){
        return lider
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
    method artefactoMasFuerte(personaje){
        if (artefactos.isEmpty()){
            self.error("no hay artefactos")
        } else {
            return artefactos.max({artefacto => artefacto.poder(personaje)})
        }
    }
}