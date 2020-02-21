//
//  Persona.swift
//  Tarea2
//
//  Created by Giovanni Ascarza on 2/20/20.
//  Copyright © 2020 Giovanni Ascarza. All rights reserved.
//

import Foundation

class Persona: CustomStringConvertible {
    
    var personaId: Int = 0
    var nombre: String = ""
    var apellidoPaterno: String = ""
    var apellidoMaterno: String = ""
    var dni: String = ""
    var telefono: String = ""
    
    init(json:[String: String]){
        let idString = json["personaId"] ?? ""
        personaId = idString.intValue
        
       nombre = json["nombre"] ?? ""
        apellidoPaterno = json["apellidoPaterno"] ?? ""
        apellidoMaterno = json["apellidoMaterno"] ?? ""
        dni  = json["dni"] ?? ""
        }
        
        var description: String {
            return "\(nombre) S/\(apellidoPaterno)"
        }
}
