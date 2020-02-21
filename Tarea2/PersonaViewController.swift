//
//  PersonaViewController.swift
//  Tarea2
//
//  Created by Giovanni Ascarza on 2/20/20.
//  Copyright © 2020 Giovanni Ascarza. All rights reserved.
//

import UIKit

class PersonaViewController: UIViewController,
UITableViewDataSource{


    var personas: [Persona] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        personas = PersonaFactory.crearPersonas()
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detalleVC = segue.destination as? PersonaDetalleViewController,
            let personaCell = sender as? PersonaCell{
            detalleVC.persona = personaCell.persona
        }
    }
    //MARK: - UITableViewDataSource

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personas.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personaCell", for: indexPath)
        
        let personaCell = cell as? PersonaCell ?? PersonaCell()
        
        let persona = personas[indexPath.row]
        personaCell.persona = persona
        
        return cell
        
    }
    
}
