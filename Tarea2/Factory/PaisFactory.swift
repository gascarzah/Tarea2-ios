//
//  PaisFactory.swift
//  Tarea2
//
//  Created by Giovanni Ascarza on 2/19/20.
//  Copyright © 2020 Giovanni Ascarza. All rights reserved.
//

import Foundation

class PaisFactory {
    
    class  func crearPaises() -> [Pais] {
        
        let pais1 = ["id_pais":"1","nombre": "Canada","detalle": "Pais al norte de america"]
        let pais2 = ["id_pais": "2","nombre": "Peru","detalle": "Pais historico"]
        
        let todosLosPaises = [pais1, pais2]
        
        var paises:[Pais] = []
        
        for json in todosLosPaises {
            let pais = Pais(json: json)
            paises.append(pais)
        }
        return paises
    }
    
}
