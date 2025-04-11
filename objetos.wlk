object rojo {
    method esFuerte(){ // es lo mismo que poner method esFuerte() = true 
      return true
    }
}

object verde {
  method esFuerte(){
      return true
    }

}

object celeste {
  method esFuerte(){
      return false
    }
}

object pardo {
  method esFuerte(){
      return false
    }

}

object naranja {
  method esFuerte(){return true}
  
}

// materiales, tenemos: el cobre y el vidrio que brillan; el lino, la madera y el cuero que no.

object cobre {
  method brilla(){
    return true 
  }
}

object vidrio {
  method brilla(){
    return true 
  }
}
object lino {
  method brilla(){
    return false 
  }
}

object madera {
  method billa(){
    return false 
  }
}

object cuero {
  method brilla(){
    return false 
  }
}

/* objetos: una remera roja de lino, pesa 800 gramos.
una pelota parda de cuero, pesa 1300 gramos.
una biblioteca verde de madera, pesa 8000 gramos.
un muñeco celeste de vidrio, de peso variable.
una placa de cobre, de peso y color variables. */

object remera{
  method color(){
    return rojo
  }
  method peso(){
    return 800 
  }
  method material(){
    return lino
  }
  method esDeColorFuerte(){
    return self.color().esFuerte() // devuelve true 
  }
  method esBrillante(){
    return self.material().brilla()
    }
  }



object pelota {
  method color(){
    return pardo
  }
  method material(){
    return cuero
  }
  method peso(){
    return 800
  }
  method esDeColorFuerte(){
    return self.color().esFuerte() 
  }
  method esBrillante(){
    return self.material().brilla()
    }
}

object biblioteca {
  method color(){
    return verde
  }
  method material(){
    return madera
  }
  method peso(){
    return 8000
  }
  method esDeColorFuerte(){
    return self.color().esFuerte() 
  }
  method esBrillante(){
    return self.material().brilla()
    }
}

object munieco {
  var peso = 0
  method color(){
    return celeste
  }
  method material() {
    return vidrio
  }
  method peso(){
    return peso
  }
  method peso(unPeso){
    peso = unPeso // sirve para modificar/ asignarle el valor del peso del muñeco
  }
  method esDeColorFuerte(){
    return self.color().esFuerte() 
  }
  method esBrillante(){
    return self.material().brilla()
    }

}

object placa {
  var peso = 0
  var color = verde // se debe inicializar con un color 
  method material(){
    return cobre
  }
  method peso(){ // Consulta, getter
    return peso
  }
  method peso(unPeso){ // Asignacion, setter
    peso = unPeso
  }
  method color(){
    return color
  }
  method color(unColor){
    color = unColor
  }
  method esDeColorFuerte(){
    return self.color().esFuerte() 
  }
  method esBrillante(){
    return self.material().brilla()
    }
}

object cajita {
  var objetoAdentro = placa

  method objetoAdentro(){return objetoAdentro}
  method objetoAdentro(unObjeto){objetoAdentro = unObjeto}
  method peso(){return 400 + objetoAdentro.peso()}
  method material(){ return cobre}
  method color(){return rojo}
  method esDeColorFuerte(){ return self.color().esFuerte()} 
  method esBrillante(){return self.material().brilla()}
  }


object arito {
method peso(){return 180}
method color(){return celeste}
method material(){ return cobre}
method esDeColorFuerte(){ return self.color().esFuerte()} 
method esBrillante(){return self.material().brilla()}

}

object banquito {
var colorDelBanquito = naranja 

method color(){return colorDelBanquito}
method colorDelBanquito(unColor){colorDelBanquito = unColor}
method material(){return madera}
method peso(){return 1700}
method esDeColorFuerte(){ return self.color().esFuerte()} 
method esBrillante(){return self.material().brilla()}

}