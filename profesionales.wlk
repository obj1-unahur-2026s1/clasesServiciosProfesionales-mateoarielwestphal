class Vinculados {
  const universidadQueEstudiaron 

  method provinciasQuepuedeTrabajar() = universidadQueEstudiaron.provincia().asList()
  method honorarioPorHoraTrabajo() = universidadQueEstudiaron.honorarios()  
  method universidadQueEstudiaron() = universidadQueEstudiaron
}

class Litoral {
  const universidadQueEstudiaron 

  method universidadQueEstudiaron() = universidadQueEstudiaron
  method honorarioPorHoraTrabajo() = 3000 
  method provinciasQuepuedeTrabajar() = ["santa fe","entre rios","corrientes"]
}

class Libres {
  const provinciasQuepuedeTrabajar = []
  const honorarioPorHoraTrabajo
  const universidadQueEstudiaron

  method universidadQueEstudiaron() = universidadQueEstudiaron
  method provinciasQuepuedeTrabajar() = provinciasQuepuedeTrabajar
  method honorarioPorHoraTrabajo() = honorarioPorHoraTrabajo      
}