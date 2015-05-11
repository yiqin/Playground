//
//  MainCollectionViewFlowLayout.swift
//  Playground
//
//  Created by Yi Qin on 5/10/15.
//  Copyright (c) 2015 Yi Qin. All rights reserved.
//

import UIKit

class MainCollectionViewFlowLayout: UICollectionViewFlowLayout {
    
    override init() {
        super.init()
        
        sectionInset = UIEdgeInsets(top: yPadding, left: 0, bottom: yPadding, right: 0)
        minimumLineSpacing = yPadding
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
