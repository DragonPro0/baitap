//
//  TestModel.swift
//  TestIGListKit
//
//  Created by Funtap on 6/3/21.
//  Copyright © 2021 Funtap. All rights reserved.
//

import Foundation

class TestModel: NSObject {
    var type : TypeOfCar?
    var name: String?
    var price: String?
    var model: CarProtocol?
    override init() {
        super.init()
    }
    
    func setupModel(_ car: CarProtocol ){
        model = car
        if let car = model as? Honda {
            self.name = "Honda"
            price = car.price
        } else if let car = model as? Audi {
            self.name = "Audi"
            price = car.price
        } else  if let car = model as?   Ford {
            self.name = "Ford"
            price = car.price
        } else  if let car = model as? Mazda {
            self.name = "Mazda"
            price = car.price
        }
        
    }
}
