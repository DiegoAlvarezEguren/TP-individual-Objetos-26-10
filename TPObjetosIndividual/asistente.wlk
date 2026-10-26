import entradas.*
class Asistente{
    var property abono
    const anioActual
    var property historialEntradas=[]
    var saldo
    var property gastoTotal
    var property descuento
    
    method precioDescontado(entrada){
        return (entrada.precioFinal())-((entrada.precioFinal())*descuento)
    }
    method comprarEntrada(entrada){
        if(saldo>0){
            saldo=saldo-self.precioDescontado(entrada)
            historialEntradas.add(entrada)
            gastoTotal=gastoTotal+entrada.precioFinal()
        }else{
            self.error("Saldo negativo en la cuenta")
        }
    }
    method entradasAnioAnterior(){
        return historialEntradas.filter({entrada=>entrada.fecha().year()==anioActual-1 })
    }
    method nombreBandasVistas(){
        return historialEntradas.map({entrada=>entrada.banda()})
    }
    
}
class Fan inherits Asistente(abono="fan",descuento=0){

}

class Vip inherits Asistente(abono="vip"){
    method ingresarDescuento(desc){
        descuento=desc
    }
    method aumentarDescuento(){
        descuento=descuento+1
    }
}