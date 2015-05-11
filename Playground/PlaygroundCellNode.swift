//
//  PlaygroundCellNode.swift
//  Playground
//
//  Created by Yi Qin on 5/10/15.
//  Copyright (c) 2015 Yi Qin. All rights reserved.
//

import UIKit

class PlaygroundCellNode: ASCellNode {
    
    init(testPlayground:TestPlayground){
        super.init()
        
        backgroundColor = UIColor.whiteColor()
    }
    
    init(playground:Playground){
        super.init()
        
        backgroundColor = UIColor.whiteColor()
    }
    
    func calculateSizeThatFits(constrainedSize: CGSize)->CGSize {
        println("calculate size that fits")
        
        
        return CGSizeMake(constrainedSize.width-xPadding, 100)
    }
    
    
    func layout(){
        
        
        
    }
    
}
