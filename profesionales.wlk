import universidad.*
class Vinculados {
  const universidadQueEstudiaron
  var dinero = 0 

  method provinciasQuepuedeTrabajar() = universidadQueEstudiaron.provincia().asList()
  method honorarioPorHoraTrabajo() = universidadQueEstudiaron.honorarios()  
  method universidadQueEstudiaron() = universidadQueEstudiaron

  method cobrarSueldo(cantidad) {
    Universidad.recibirDonacion(cantidad / 2)
  }

  method recibirDinero(cantidad) {
    dinero = cantidad
  }
}

class Litoral {
  const universidadQueEstudiaron 
  var dinero = 0 

  method universidadQueEstudiaron() = universidadQueEstudiaron
  method honorarioPorHoraTrabajo() = 3000 
  method provinciasQuepuedeTrabajar() = ["santa fe","entre rios","corrientes"]

  method cobrarSueldo(cantidad) {
    asociacionDelLitoral.recibirDinero(cantidad)
  }

   method recibirDinero(cantidad) {
    dinero = cantidad
  }
}

class Libres {
  const provinciasQuepuedeTrabajar = []
  const honorarioPorHoraTrabajo
  const universidadQueEstudiaron
  var dinero = 0 

  method universidadQueEstudiaron() = universidadQueEstudiaron
  method provinciasQuepuedeTrabajar() = provinciasQuepuedeTrabajar
  method honorarioPorHoraTrabajo() = honorarioPorHoraTrabajo   

  method cobrarSueldo(cantidad) {
    dinero += cantidad
  }   

  method pasarDinero(persona,cantidad) {
    if(dinero >= cantidad){
        persona.recibirDinero(cantidad)
        dinero -= cantidad
    }
  }
}

object asociacionDelLitoral {
  var totalRecaudado = 0 

  method recibirDinero(cantidad) {
    totalRecaudado += cantidad
  }
}