//
//  PersonaCell.swift
//  Tarea2
//
//  Created by Giovanni Ascarza on 2/20/20.
//  Copyright © 2020 Giovanni Ascarza. All rights reserved.
//

import UIKit

class PersonaCell: UITableViewCell {


    
    @IBOutlet weak var apellidoMaternoLabel: UILabel!
    @IBOutlet weak var apellidoPaternoLabel: UILabel!
    @IBOutlet weak var nombreLabel: UILabel!
    @IBOutlet weak var dniLabel: UILabel!
    var persona: Persona?{
        didSet{
            if let unaPersona = self.persona{
                setUpCell(with: unaPersona)
            }
        }
    }
    
    
    func setUpCell(with persona: Persona){
        dniLabel.text = persona.dni
        nombreLabel.text = persona.nombre
        apellidoPaternoLabel.text = persona.apellidoPaterno
        apellidoMaternoLabel.text = persona.apellidoMaterno
    }
}
