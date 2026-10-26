import productora.*
class Entrada{
    var property banda
    const property fecha=new Date()
    const precioBase = 1000

    
    method precioFinal(){
        return precioBase + productora.impuesto()
    }

}
