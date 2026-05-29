class Empresa {
  const profesionales = []
  const honorarioReferencia

  method agregarProfesional(profesional) {
    profesionales.add(profesional)
  }

  method cuantosEstudiaronEn(universidad) = profesionales.count({profesional => profesional.universidadQueEstudiaron() == universidad})
  method profesionalesCaros() = profesionales.filter({profesional => profesional.honorarioPorHoraTrabajo() > honorarioReferencia})
  method universidadesFormadoras() = profesionales.map({profesional => profesional.universidadQueEstudiaron()}).asSet().asList()
  method profesionalMasBarato() = profesionales.min({profesional => profesional.honorarioPorHoraTrabajo()}) 
  method esGenteAcotada() = profesionales.all({profesional => profesional.provinciasQuepuedeTrabajar().size() <= 3})   
}