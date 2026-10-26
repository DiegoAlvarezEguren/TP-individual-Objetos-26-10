import asistente.*
import bandas.*
import entradas.*
object productora {
    const bandas=[]
    var property asistentes=[]

    method gananciaTotal(){
        return (asistentes.map({asistente=>asistente.gastoTotal()})).sum()-(bandas.presupuesto().sum())
    }
    method entradasVendidas(){
        return asistentes.historialEntradas().flatten()
    }
    method entradasVendidasTotal(){
        return self.entradasVendidas().size()
    }

    method bandaMasPopular() {
        return bandas.max({ banda => self.entradasVendidasDe(banda) })
    }

    method entradasVendidasDe(banda) {
        return self.entradasVendidas().count({ entrada => entrada.banda() == banda })
    }


    method bonificarVIP(){
        asistentes.filter({asistente=>asistente.abono()=="vip"}).aumentarDescuento()
    }
}