//
//  PaisViewController.swift
//  Tarea2
//
//  Created by Giovanni Ascarza on 2/19/20.
//  Copyright © 2020 Giovanni Ascarza. All rights reserved.
//

import UIKit

class PaisViewController: UIViewController, UITableViewDataSource {

    var paises: [Pais] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        paises = PaisFactory.crearPaises()
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let paisDetalleVC = segue.destination as?
        PaisDetalleViewController,
            let paisCell = sender as? PaisCell {
         /*   paisDetalleVC.pais?.nombre = paisCell.nombre
            paisDetalleVC.pais?.paisId = paisCell.paisId
            paisDetalleVC.pais?.detalle = paisCell.detalle
 */
        }
       
    }
    
    // MARK: - UITableViewDataSource
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
 func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return paises.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
     let cell = tableView.dequeueReusableCell(withIdentifier: "paisCell", for: indexPath)
    
      let pais = paises[indexPath.row]
    
    print("Antes : \(pais)")
      cell.textLabel?.text = pais.nombre
      cell.detailTextLabel?.text = pais.description
      return cell
  }


}
