//
//  ListSectionController.swift
//  TestIGListKit
//
//  Created by Funtap on 6/3/21.
//  Copyright © 2021 Funtap. All rights reserved.
//

import Foundation
import IGListKit


class ListSectionModel: ListDiffable{
    var type: SectionType = .section1
    var id =  ""
    var data : TestModel?
    
    func diffIdentifier() -> NSObjectProtocol {
        return self.id as NSObjectProtocol
    }
    
    init(type: SectionType ){
      self.type = type
    }
    
    func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        guard let obj = object as? ListSectionModel else {
          return false
        }
        return self.type == obj.type && self.id == obj.id
    }
}


class ListSection: NSObject {
    var adapter: ListAdapter!
    var fromTopicId: String!
    var list = [ListSectionModel]()
    var isLoading = false {
      didSet {
        adapter.performUpdates(animated: false, completion: nil)
       // adapter.reloadData(completion: nil)
      }
    }
    
    func initAdapter(vc: UIViewController, collectionView: UICollectionView) {
        adapter = ListAdapter(updater: ListAdapterUpdater(), viewController: vc, workingRangeSize: 0)
        adapter.collectionView = collectionView
        adapter.dataSource = self
    }
    
    func addModel(_ models: [TestModel]) {
            
        for model in models {
            let model1 = ListSectionModel(type: .section1)
            model1.data = model
            model1.id = UUID().uuidString
            list.append(model1)
            let model2 = ListSectionModel(type: .section2)
            model2.data = model
            model2.id =   UUID().uuidString
            list.append(model2)
        }
         
    }
}
 
extension ListSection: ListAdapterDataSource {
    
    func objects(for listAdapter: ListAdapter) -> [ListDiffable] {
         
        return list
    }
    
    func listAdapter(_ listAdapter: ListAdapter, sectionControllerFor object: Any) -> ListSectionController {
        guard let object = object as? ListSectionModel else {
            return ListSectionController()
        }
        switch object.type {
        case .section1:
            let controller =  SectionController1()
            return controller
        case .section2:
            let controller =  SectionController2()
            return controller
        }
    }
    
    func emptyView(for listAdapter: ListAdapter) -> UIView? {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }
}
