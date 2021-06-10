//
//  TestCell.swift
//  TestIGListKit
//
//  Created by Funtap on 6/3/21.
//  Copyright © 2021 Funtap. All rights reserved.
//

import UIKit

class TestCell: UICollectionViewCell {
    var model: TestModel?
    @IBOutlet weak var lblTop: UILabel!
    @IBOutlet weak var lblBot: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
    
    @IBAction func touchShowData(_ sender: Any) {
  
        go(model?.type ?? .honda)
    }
    
    func go(_ name: TypeOfCar) {
        
        guard  let car = model?.model as? StrategyProtocol else {
            return
        }
        let context = ContextStrategy()
        context.setCar(car: car)
        context.testGo()
        
    }
    
    func setupView(){
        
        lblBot.text = model?.name
        lblTop.text = model?.price
        
    }
    
    func setupData(_ model: TestModel) {
        self.model = model
        setupView()
    }
    

}
