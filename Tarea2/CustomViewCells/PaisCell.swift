//
//  PaisCell.swift
//  Tarea2
//
//  Created by Giovanni Ascarza on 2/20/20.
//  Copyright © 2020 Giovanni Ascarza. All rights reserved.
//

import UIKit

class PaisCell: UITableViewCell {

   
    var pais: Pais?{
        didSet{
            if let unPais = self.pais{
                setUpCell(with: unPais)
            }
        }
    }

    func setUpCell(with pais: Pais){
        
    }
}
