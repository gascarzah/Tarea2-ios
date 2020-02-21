//
//  PersonaDetalleViewController.swift
//  Tarea2
//
//  Created by Giovanni Ascarza on 2/20/20.
//  Copyright © 2020 Giovanni Ascarza. All rights reserved.
//

import UIKit

class PersonaDetalleViewController: UIViewController {

        @IBOutlet weak var nombreLabel: UILabel!
    
    var persona:Persona?
    override func viewDidLoad() {
        super.viewDidLoad()

        if let unaPersona = persona {
            nombreLabel.text = unaPersona.nombre
        }
    }
    

    
   

}
