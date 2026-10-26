class Banda{
    const nombre
    const canon=1000000
    method presupuesto()
    method popularidad()

}
class BandaRock inherits Banda{
    const solosGitarra
    override method presupuesto(){
        return canon+10000
    }
    override method popularidad(){
        return solosGitarra*100
    }
}
class BandaTrap inherits Banda{
    const hielo
    override method presupuesto(){
        return canon*self.popularidad()
    }
    override method popularidad(){
        if(hielo>0){
            return 1000
        }else{
            return 0
        }
    }
}
class BandaIndie inherits Banda{
    const cantidadInstrumentos
    override method popularidad(){
        return nombre.length()*3.14
    }
    override method presupuesto(){
        return canon+(cantidadInstrumentos*500)
    }
}