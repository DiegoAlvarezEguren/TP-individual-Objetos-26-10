import asistente.*
import bandas.*
import entradas.*
object productora {
    var bandas=[]
    var property asistentes=[]
    const bandasYEntradasVendidas= new Dictionary()
    method gananciaTotal(){
        return (asistentes.map({asistente=>asistente.gastoTotal()})).sum()-(bandas.presupuesto().sum())
    }
    method entradasVendidas(){
        return asistentes.historialEntradas().flatten()
    }
    method entradasVendidasTotal(){
        return self.entradasVendidas().size()
        
    }

    method bonificarVIP(){
        asistentes.filter({asistente=>asistente.abono()=="vip"}).aumentarDescuento()
    }
}