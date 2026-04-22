object espada{
    var cantidadUtilizada = 0

    method utilizar(){
        cantidadUtilizada += 1
    }
    method poder(personaje){
        if (cantidadUtilizada < 1){
            return personaje.poderBase()
        } else{
            return (personaje.poderBase() / 2)
        }
    }
}
object libro{ 
    const hechizos = []

    method sumarHechizo(hechizoAAgregar){
        hechizos.add(hechizoAAgregar)
    }

    method poder(personaje){
        if (hechizos.isEmpty()){
            return 0
        } else{
            return (hechizos.get(0)).poder(personaje)
            }
    }
    method utilizar(){
        if(hechizos.isEmpty()){
            self.error("No hay hechizos para utilizar")
        } else{
            hechizos.remove(hechizos.first())
            }
    }
}
object collar{
    var cantBatallasUtilizado = 0

    method utilizar(){
        cantBatallasUtilizado += 1
    }

    method poder(personaje){
        if (personaje.poderBase() > 6){
            return 3 + cantBatallasUtilizado
        }else {
            return 3
        }
    }
}
object armadura{
    
    method poder(personaje){
        return 6
    }
    method utilizar(){
    }
}