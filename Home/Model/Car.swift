//
//  Car.swift
//  TestIGListKit
//
//  Created by Funtap on 6/9/21.
//  Copyright © 2021 Funtap. All rights reserved.
//

import Foundation

enum typeOfCar {
    case ford
    case honda
    case audi
    case mazda
}

class Car {
    var	color: String?
    var dateManufacture: Date?
    var capacity: String?
    
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
    func test (st : StrategyProtocol) {
        self.strategy = st
    }
    
    func testGo() {
        strategy?.go()
    }
}

class Main {
    func main () {
        let context = ContextStrategy()
        context.test(st: Mazda())
        context.testGo()
    }
}

protocol TypeOfCarProtocol {
    var style : typeOfCar { get set }
    
}

