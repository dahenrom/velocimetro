//: Playground - noun: a place where people can play

import UIKit

//: Playground - noun: a place where people can play

import UIKit

enum Velocidades : Int {
    
    
    case Apagado = 0 ,VelocidadBaja = 20 , VelocidadMedia = 50, VelocidadAlta = 120
    
    init( velocidadInicial : Velocidades){
        self = velocidadInicial
    }
    
    
}






class Auto {
    
    var velocidad:Velocidades
    
    
    init() {
        
        velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    
    
    func cambioDeVelocidad (actual : Int , var velocidadEnCadena : String ) -> (Int, String) {
        
        
        
        
        switch velocidad {
            
        case .Apagado:
            velocidad = .VelocidadBaja
            velocidadEnCadena = "Apagado"
            
            
        case .VelocidadBaja:
            velocidad = .VelocidadMedia
            velocidadEnCadena = "Velocidad Baja"
            
        case .VelocidadMedia:
            velocidad = .VelocidadAlta
            velocidadEnCadena = "Velocidad Media"
            
        case .VelocidadAlta:
            velocidad = .VelocidadMedia
            velocidadEnCadena = "Velocidad Alta"
            
            
        }
        
        
        
        return (actual, velocidadEnCadena)
        
    }
    
    
    
    
}

var auto = Auto()
var mensaje : String = ""

for var cont = 1; cont<=20 ; cont++
{
    
    var estado = auto.cambioDeVelocidad(auto.velocidad.rawValue,velocidadEnCadena: mensaje)
    print ("\(cont) , \(estado.0) , \(estado.1)")
}
