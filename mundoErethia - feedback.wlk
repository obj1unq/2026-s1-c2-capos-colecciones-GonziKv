import capos.*
import enemigos.*
import moradas.*

object erethia{
    const enemigos = #{}
    method addEnemy(enemigo){
        enemigos.add(enemigo)
    }
    method esPoderoso(personaje){
        return enemigos.all({enemigo => personaje.leGana(enemigo)})
    }
}