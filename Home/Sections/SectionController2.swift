//
//  Section2.swift
//  TestIGListKit
//
//  Created by Funtap on 6/3/21.
//  Copyright © 2021 Funtap. All rights reserved.
//

import Foundation
import IGListKit

class SectionController2 : ListSectionController{
    
    var model : TestModel?
    override init() {
        super.init() 
    }
    
    override func didUpdate(to object: Any) {
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
            let cell = collectionContext?.dequeueReusableCell(withNibName: "Cell2", bundle: nil, for: self, at: index) as! Cell2
            cell.setupData(self.model ?? TestModel())
            return cell
       }
    
    
    override func sizeForItem(at index: Int) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width, height: 100)
    }
}
