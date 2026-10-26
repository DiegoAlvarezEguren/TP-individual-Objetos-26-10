object abonoFan{
  method porcentajeDescuento() = 0
  method bonificar(){}
}

class AbonoVip {
  var property porcentajeDescuento

  method bonificar() {
    porcentajeDescuento += 1
  }
}