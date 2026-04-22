import hechizos.*
object espada{
    var cantidadUtilizada = 0
    var personaje = null

    method personaje(_personaje){
        personaje = _personaje
    }
    method utilizar(){
        cantidadUtilizada += 1
    }
    method poder(){
        if (cantidadUtilizada < 1){
            return personaje.poderBase()
        } else{
            return (personaje.poderBase() / 2)
        }
    }
}
object libro{ 
    const hechizos = []
    var personaje = null
    var cantUsada = 0

    method personaje(_personaje){
        personaje = _personaje
    }
    method personaje(){
        return personaje
    }
    method poder(){
        return hechizos.sum{hechizo => hechizo.poder()}
    }
    method utilizar(){
        cantUsada += 1
    }
}
object collar{
    var personaje         = null
    var cantBatallasUtilizado = 0

    method utilizar(){
        cantBatallasUtilizado += 1
    }

    method personaje(_personaje){
        personaje = _personaje
    }

    method poder(){
        if (personaje.poderBase() > 6){
            return 3 + cantBatallasUtilizado
        }else {
            return 3
        }
    }
}
object armadura{
    var personaje = null
    var cantUsada = 0
    method personaje(_personaje){
        personaje = _personaje
    }
    method poder(){
        return 6
    }
    method utilizar(){
        cantUsada += 1
    }
}