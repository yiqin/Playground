//
//  TestDataManager.swift
//  Playground
//
//  Created by Yi Qin on 5/10/15.
//  Copyright (c) 2015 Yi Qin. All rights reserved.
//

import UIKit

class TestDataManager: NSObject {
    
    class func getTestPlaygrounds()->[TestPlayground] {
        
        let playground1 = TestPlayground(title:"hi", tagline:"hihi")
        let playground2 = TestPlayground(title:"hi", tagline:"hihi")
        let playground3 = TestPlayground(title:"hi", tagline:"hihi")
        
        return [playground1,playground2,playground3]
    }

}
