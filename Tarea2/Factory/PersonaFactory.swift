//
//  PersonaFactory.swift
//  Tarea2
//
//  Created by Giovanni Ascarza on 2/20/20.
//  Copyright © 2020 Giovanni Ascarza. All rights reserved.
//

import Foundation


class PersonaFactory {
    
    class  func crearPersonas() -> [Persona] {
    let p1 = ["personaId":"1","nombre": "Giovanni","apellidoPaterno": "Ascarza","apellidoMaterno": "Hinostroza",
              "dni":"11111111"]
    
    let p5 = ["personaId":"1","nombre": "Adolfo","apellidoPaterno": "Ascarza","apellidoMaterno": "Quispe",
    "dni":"22222222"]
    
    let p2 = ["personaId":"1","nombre": "Fidel","apellidoPaterno": "Ascarza","apellidoMaterno": "Hinostroza",
    "dni":"33333333"]
    
    let p3 = ["personaId":"1","nombre": "Karina","apellidoPaterno": "Ascarza","apellidoMaterno": "Hinostroza",
    "dni":"44444444"]
    
    let p4 = ["personaId":"1","nombre": "Mercedes","apellidoPaterno": "Hinostroza","apellidoMaterno": "Hinostroza",
    "dni":"55555555"]
     
        let todasLasPersonas = [p1, p2,p3, p4,p5]
        
        var personas: [Persona] = []
        
        for json in todasLasPersonas {
            let persona = Persona(json: json)
            personas.append(persona)
        }
        return personas
        
    }
}

