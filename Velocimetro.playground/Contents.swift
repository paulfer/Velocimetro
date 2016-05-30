//: Velocimetro

import UIKit

enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init (velocidadInicial: Velocidades ){
        self = velocidadInicial
    }
    
}

class Auto {
    
    var velocidad : Velocidades
    var mensaje: String
    
    init(){
        velocidad = Velocidades( velocidadInicial: .Apagado)
        mensaje = "Apagado"
    }
    
    func cambioDeVelocidad() -> (actual: Int, velocidadEnCadena: String){
        self.velocidad
        
        switch velocidad{
        
            case .Apagado:
                velocidad = .VelocidadBaja
                mensaje = " Velocidad baja"
            case .VelocidadBaja:
                velocidad = .VelocidadMedia
                mensaje = " Velocidad media"
            case .VelocidadMedia:
                velocidad = .VelocidadAlta
                mensaje = " Velocidad alta"
            case .VelocidadAlta:
                velocidad = .VelocidadMedia
                mensaje = " Velocidad media"
        }
        
        return(velocidad.rawValue, mensaje)
        
    }
    
}

    
var auto = Auto()
auto.velocidad
for iterar in 1...20 {
    print(iterar ,auto.cambioDeVelocidad())
}