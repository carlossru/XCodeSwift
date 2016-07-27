//: Playground - noun: a place where people can play

import UIKit

enum Velocidades : Int {
    
    case Apagado = 0, VelocidadBaja = 20, VelociadaMedia = 50, VelocidadAlta = 150
    
    init( velocidadInicial : Velocidades ) {
        self = velocidadInicial
    }
    
}


class Auto {
    
    var velocidad = Velocidades(velocidadInicial: .Apagado)
    
    init( velocidad : Velocidades ) {
        self.velocidad = velocidad
    }
    
    func cambioDeVelocidad() -> ( actual : Int, velocidadEnCadena : String ) {
        
        var leyenda : String
        let valorVelocidad = velocidad.rawValue
        
        switch velocidad {
        case Velocidades.Apagado:
            leyenda = "Apagado"
            velocidad = .VelocidadBaja
            
        case Velocidades.VelocidadBaja:
            leyenda = "Velocidad Baja"
            velocidad = .VelociadaMedia
            
        case Velocidades.VelociadaMedia:
            leyenda = "Velocidad Media"
            velocidad = .VelocidadAlta
            
        case Velocidades.VelocidadAlta:
            leyenda = "Velocidad Alta"
            velocidad = .VelociadaMedia
            
        default:
            leyenda = "No Valido"
            velocidad = .Apagado
        }
        
        return (valorVelocidad, leyenda)
        
    }
    
}

var unAuto = Auto(velocidad: .Apagado)

for i in 1...20 {
    print(unAuto.cambioDeVelocidad())
}