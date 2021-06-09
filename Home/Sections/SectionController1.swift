//
//  Section1.swift
//  TestIGListKit
//
//  Created by Funtap on 6/3/21.
//  Copyright © 2021 Funtap. All rights reserved.
//

import Foundation
import IGListKit

class SectionController1 : ListSectionController{
     
    var model : TestModel?
    override init() {
        super.init()
        
    }
     
    
    override func didUpdate(to object: Any) {
//        print((object as? ListSectionModel)?.data)
        let data = (object as? ListSectionModel)?.data
        guard let model = data  else {
             return
        }
        self.model = model
        
    }
    
    
    override func numberOfItems() -> Int {
         return 1
     }
    
    override func cellForItem(at index: Int) -> UICollectionViewCell {
        let cell = collectionContext?.dequeueReusableCell(withNibName: "TestCell", bundle: nil, for: self, at: index) as! TestCell
        
        cell.setupData(self.model ?? TestModel())
        return cell
    }
    override func sizeForItem(at index: Int) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width, height: 100)
    }
}
