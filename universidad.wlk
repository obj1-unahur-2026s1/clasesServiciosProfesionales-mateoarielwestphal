class Universidad {
  const provincia 
  const honorarios 
  var donaciones = 0 

  method provincia() = provincia 
  method honorarios() = honorarios

  method recibirDonacion(monto) {
    donaciones += monto
  } 
}