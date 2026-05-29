class Persona {
  const provinciaQueVive

  method puedeSerAtendidoPor(profesional) = profesional.provinciasQuepuedeTrabajar().contains(provinciaQueVive)
}

class Institucion {
  const universidades = []

  method agregarUniversidad(univer) {
    universidades.add(univer)
  }

  method puedeSerAtendidoPor(profesional) = universidades.contains(profesional.universidadQueEstudiaron())
   //universidades.any({elemento => profesional.provinciasQuepuedeTrabajar().contains(elemento)})
}

class Club {
  const provincias = []

  method agregarProvincia(provincia) {
    provincias.add(provincia)
  }

  method puedeSerAtendidoPor(profesional) = provincias.any({elemento => profesional.provinciasQuepuedeTrabajar().contains(elemento)}) 
}

