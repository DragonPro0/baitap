//
//  TestModel.swift
//  TestIGListKit
//
//  Created by Funtap on 6/3/21.
//  Copyright © 2021 Funtap. All rights reserved.
//

import Foundation

class TestModel: NSObject {
    var type : typeOfCar?
    var name: String?
    var age: String?
    
    override init() {
        super.init()
    }
    
    func setupModel(_ type2: typeOfCar){
        switch type2 { 
        case .honda:
            self.name = "Honda"
             return
        case .audi:
            self.name = "Audi"
            return
        case .ford:
            self.name = "Ford"
            return
        case .mazda:
            self.name = "Mazda"
            return
        default:
            self.name = "..."
            return
        }
    }
}
