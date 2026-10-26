import asistente.*
import bandas.*
import entradas.*
object productora {
    var bandas=[]
    var asistentes=[]

    method gananciaTotal(){
        return (asistentes.map({asistente=>asistente.gastoTotal()})).sum()-(bandas.presupuesto().sum())
    }
    method entradasVendidasTotal(){
        return bandas.map({banda=>banda.entradasVendidas()}).sum()
        
    }
    method bandaMasPopular(){
        return bandas.map({banda=>banda.entradasVendidas()}).max({banda=>banda.entradasVendidas()})
    }
}