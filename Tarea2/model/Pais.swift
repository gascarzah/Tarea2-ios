//
//  Pais.swift
//  Tarea2
//
//  Created by Giovanni Ascarza on 2/19/20.
//  Copyright © 2020 Giovanni Ascarza. All rights reserved.
//

import Foundation

class Pais: CustomStringConvertible {
    
    
    var paisId: Int = 0
    var nombre: String = ""
    var detalle: String = ""
    
    init(json:[String: String]) {
        let idString = json["id_pais"] ?? ""
        paisId = idString.intValue
        
        nombre = json["nombre"] ?? ""
        detalle = json["detalle"] ?? ""
    }
    
    var description: String {
        return "\(nombre) S/\(detalle)"
    }
    
}
