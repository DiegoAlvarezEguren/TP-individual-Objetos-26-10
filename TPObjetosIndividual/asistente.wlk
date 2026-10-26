import entradas.*
class Asistente{
    var property abono

    var property historialEntradas=[]
    var property saldo
    var property gastoTotal = 0

    
    method precioDescontado(entrada) {
        return entrada.precioFinal() * (1 - abono.porcentajeDescuento() / 100)
    }
    method comprarEntrada(banda,fecha){
        if(saldo>0){
            const entrada= new Entrada(banda=banda,fecha=fecha)
            saldo=saldo-self.precioDescontado(entrada)
            historialEntradas.add(entrada)
            gastoTotal=gastoTotal+entrada.precioFinal()
        }else{
            self.error("Saldo negativo en la cuenta")
        }
    }
    method entradasAnioAnterior(){
        const anioPasado = new Date().year() - 1
        return historialEntradas.filter({entrada=>entrada.fecha().year()==anioPasado })
    }
    method nombreBandasVistas(){
        return historialEntradas.map({ entrada => entrada.banda().nombre() }).asSet().asList()
    }

    method bonificar(){
        abono.bonificar()
    }
    
}
