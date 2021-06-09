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
    
    func go(_ name: typeOfCar) {
        let context = ContextStrategy()
        
        switch name {
        case .honda:
            context.test(st: Honda())
        case .audi:		
            context.test(st: Audi())
        case .ford:
            context.test(st: Ford())
        case .mazda:
            context.test(st: Mazda())
        }
        
        context.testGo()
        
    }
    
    func setupView(){
        
        lblBot.text = model?.name
        lblTop.text = model?.age
        
    }
    
    func setupData(_ model: TestModel) {
        self.model = model
        setupView()
    }
    

}
