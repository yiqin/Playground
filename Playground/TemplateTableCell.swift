//
//  TemplateTableCell.swift
//  Playground
//
//  Created by Yi Qin on 5/10/15.
//  Copyright (c) 2015 Yi Qin. All rights reserved.
//

import UIKit

class TemplateTableCell: ASCellNode {
    
    // MARK: set the maximum number
    //
    // Set imageView1, imageView2, imageView3
    // Set label1, label2, label3
    // Set button1, button2, button3
    // 
    // For each table view cell, I think less than 6 UI elements
    
    
    var imageViews:[ASImageNode] = []
    var labels:[ASTextNode] = []
    
    
    init(testPlayground:TestPlayground){
        super.init()
        
        backgroundColor = UIColor.whiteColor()
        
        // MARK: put text data here
        let textData:[String] = ["hi", testPlayground.title, testPlayground.tagline]
        
        for tempText in textData {
            let tempTextNode = ASTextNode()
            
            // MARK: define the font
            let titleAttributes = [NSFontAttributeName: UIFont.boldSystemFontOfSize(17),
                NSForegroundColorAttributeName: UIColor.blackColor()]
            
            tempTextNode.attributedString = NSAttributedString(string: tempText, attributes: titleAttributes)
            
            labels += [tempTextNode]
        }
        
        let image1 = UIImage(named: "goldengatefade.jpg")
        let imageData:[UIImage] = [image1!]
        
        for tempImage in imageData {
            let tempImageNode = ASImageNode()
            tempImageNode.image = tempImage
            imageViews += [tempImageNode]
        }
        
    }
    
    
    init(playground:Playground){
        super.init()
        
        backgroundColor = UIColor.whiteColor()
    }
    
    
    
    func calculateSizeThatFits(constrainedSize: CGSize)->CGSize {
        println("calculate size that fits")
        
        
        
        return CGSizeMake(constrainedSize.width, 200)
    }
    
    
    
    func layout(){
        
        var yLabel:CGFloat = yPadding
        for label in labels {
            label.frame = CGRectMake(100+2*xPadding, yLabel, calculatedSize.width-10-3*xPadding, 30)
            addSubnode(label)
            
            yLabel = yLabel+30+yPadding
        }
        
        
        for imageView in imageViews {
            
            imageView.frame = CGRectMake(xPadding, yPadding, 100, 100)
            
            addSubnode(imageView)
        }
        
        
        
    }


}
