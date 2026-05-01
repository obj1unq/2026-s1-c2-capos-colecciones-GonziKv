import artefactos.*

object bendicion{
    method poder(personaje){
        return 4
    }
}
object invisibilidad{
    method poder(personaje){
        return personaje.poderBase()
    }
}
object invocacion{
    method poder(personaje){
        return personaje.poderArtefactoMasFuerteEnReserva()
    }
}

