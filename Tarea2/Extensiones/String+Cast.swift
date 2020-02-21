//
//  String+Cast.swift
//  Tarea2
//
//  Created by Giovanni Ascarza on 2/19/20.
//  Copyright © 2020 Giovanni Ascarza. All rights reserved.
//

import Foundation

extension String {
    var intValue: Int{
        return Int(self) ?? 0
    }
}
