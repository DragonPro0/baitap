//
//  ViewController.swift
//  TestIGListKit
//
//  Created by Funtap on 6/3/21.
//  Copyright © 2021 Funtap. All rights reserved.
//

import UIKit
import IGListKit

enum SectionType : String{
    case section1
    case section2
}

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
     
    var list = [TestModel]()
    var section = ListSection()
    let listCar:[TypeOfCar] = [ .honda, .audi, .ford, .mazda ]
    override func viewDidLoad() {
        super.viewDidLoad()
        setupData()
      
            
        section.addModel(list)
         
        section.initAdapter(vc: self, collectionView: collectionView)
    }
    
    func setupData() {
        
      
        
        for i in 0...3 {
            let model = TestModel() 
            let car =  CarFactory.createCar(type: listCar[i]) 
            model.setupModel(car)
            list.append(model)
        }
    }
     
}
 

class TableSectionController : ListSectionController {
    
}

 
 

 
