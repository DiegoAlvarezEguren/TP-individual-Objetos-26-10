import asistente.*
import bandas.*
import entradas.*
object productora {
    const bandas=[]
    var property asistentes=[]
    var property impuesto=0
    method agregarBanda(banda){
        bandas.add(banda)
    } 
    method agregarAsistente(asistente){
        asistentes.add(asistente) 
    }
    method gananciaTotal(){
        return (asistentes.map({asistente=>asistente.gastoTotal()})).sum()-(bandas.sum({ banda => banda.presupuesto() }))
    }
    method entradasVendidas(){
        return asistentes.flatMap({ asistente => asistente.historialEntradas() })
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


    method bonificarVIP() {
    asistentes.forEach({ asistente => asistente.bonificar() })
  }
}