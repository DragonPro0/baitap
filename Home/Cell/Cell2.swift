//
//  Cell2.swift
//  TestIGListKit
//
//  Created by Funtap on 6/3/21.
//  Copyright © 2021 Funtap. All rights reserved.
//

import UIKit

class Cell2: UICollectionViewCell {
    var model: TestModel?

    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
//        setupView()
    }
    
    func setupView() {
 
         
        lblName.text = model?.name
        
    }
    
    func setupData(_ model: TestModel) {
        self.model = model
        setupView()
    }

}
