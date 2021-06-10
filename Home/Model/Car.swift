//
//  Car.swift
//  TestIGListKit
//
//  Created by Funtap on 6/9/21.
//  Copyright © 2021 Funtap. All rights reserved.
//

import Foundation

enum TypeOfCar {
    case ford
    case honda
    case audi
    case mazda
}
protocol CarProtocol {
    var color: String? {get set}
    var dateManufacture: Date? { get set}
    var capacity: String? {get set}
}
class Car : CarProtocol {
    var	color: String?
    var dateManufacture: Date?
    var capacity: String?
    	
}

class CarFactory{
    class func createCar( type: TypeOfCar) -> CarProtocol {
        switch type {
        case .audi:
            let audi = Audi()
            audi.price = "999"
            return audi
         case .honda:
            let honda = Honda()
            honda.price = "9991"
            return honda
        case .mazda:
            let mazda = Mazda()
            mazda.price = "9001"
            return mazda
        case .ford:
            let ford = Ford()
            ford.price = "4531"
            return ford
        }
    }
}

class Ford: Car, StrategyProtocol {
    var name: String?
    var codes: String?
    var price: String?
    
    func go() {
        print ("Ford go ")
    }
}

class Honda: Car, StrategyProtocol {
    var name: String?
    var codes: String?
    var price: String?
    
    func go() {
        print ("Honda go ")
    }
}

class Audi: Car, StrategyProtocol {
    var name: String?
    var codes: String?
    var price: String?
    
    func go() {
        print ("Audi go ")
    }
}

class Mazda : Car, StrategyProtocol {
    func go() {
        print ("Mazda go")
    }
    
    var name: String?
    var codes: String?
    var price: String?
     
}

protocol StrategyProtocol {
    func go()
    
}

class ContextStrategy {
    var strategy: StrategyProtocol?
    func setCar (car : StrategyProtocol) {
        self.strategy = car
    }
    
    func testGo() {
        strategy?.go()
    }
}

 
protocol TypeOfCarProtocol {
    var style : TypeOfCar { get set }
    
}

