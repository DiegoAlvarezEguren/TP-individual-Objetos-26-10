class Entradas{
    var property banda
    var property fecha
    var precioBase = 1000
    var impuesto
    
    method precioFinal(){
        return precioBase + impuesto
    }

}
class Fecha{
    var property dia
    var property mes
    var property anio
}
