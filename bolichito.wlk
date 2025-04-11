import objetos.*
import personas.*

object bolichito {
    var objetoEnMostrador = pelota
    var objetoEnVidriera = munieco
    method objetoEnVidriera(unObjetoenVidriera){ objetoEnVidriera = unObjetoenVidriera}
    method objetoEnVidriera(){return objetoEnVidriera}
    method objetoEnMostrador(unObjetoEnMostrador){ objetoEnMostrador = unObjetoEnMostrador}
    method objetoEnMostrador(){return objetoEnMostrador}
    method esBrillante(){ return objetoEnMostrador.material().brilla() && objetoEnVidriera.material().brilla()}
    method esMonocromatico(){return objetoEnMostrador.color() == objetoEnVidriera.color()}
    method esEquilibrado(){return objetoEnMostrador.peso()>= objetoEnVidriera.peso()}// self es para acceder al resultado de un methodo
    method tieneObjetoDeColor(unColor){ return objetoEnMostrador.color() == unColor || objetoEnVidriera.color() == unColor}
    method puedeMejorar(){return not self.esEquilibrado() || self.esMonocromatico()}
    method ofrecerAlgoA(unaPersona){return unaPersona.leGusta(objetoEnMostrador) || unaPersona.leGusta(objetoEnVidriera)}
}

