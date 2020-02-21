//
//  PaisDetalleViewController.swift
//  Tarea2
//
//  Created by Giovanni Ascarza on 2/19/20.
//  Copyright © 2020 Giovanni Ascarza. All rights reserved.
//

import UIKit

class PaisDetalleViewController: UIViewController {

    
    @IBOutlet weak var nombreLabel: UILabel!
    var pais:Pais?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let unPais = pais {
            nombreLabel.text = unPais.nombre
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
