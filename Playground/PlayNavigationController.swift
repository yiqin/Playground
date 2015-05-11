//
//  PlayNavigationController.swift
//  Playground
//
//  Created by Yi Qin on 5/10/15.
//  Copyright (c) 2015 Yi Qin. All rights reserved.
//

import UIKit

class PlayNavigationController: UINavigationController, UIGestureRecognizerDelegate {
    
    var templateTableViewController: TemplateTableViewController?
    
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
    }
    
    override init(rootViewController: UIViewController) {
        
        templateTableViewController = TemplateTableViewController()
        // setViewControllers([templateTableViewController!], animated: false)
        
        super.init(rootViewController: templateTableViewController!)
        
        
        
        
        
        
        
        
        // MARK: set navigation bar UI
        var nav = navigationBar
        nav.barTintColor = UIColor.yellowColor()
        nav.tintColor = UIColor.redColor()  // Text color....
        // nav.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.orangeColor()]
        
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.Default
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addBackTapGesture()
        
        title = "test"
        view.backgroundColor = UIColor.whiteColor()
        
        
        
        

    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    func addBackTapGesture(){
        var tapGesture = UITapGestureRecognizer(target: self, action: Selector("handleTap:"))
        tapGesture.numberOfTapsRequired = 1
        tapGesture.numberOfTouchesRequired = 3
        
        view.userInteractionEnabled = true
        view.multipleTouchEnabled = true
        view.addGestureRecognizer(tapGesture)
    }
    
    func handleTap(tapGestureRecognizer: UITapGestureRecognizer) {
        
        println("handleTap")
        
        let alertController = UIAlertController(title: "Playground Setting", message: "", preferredStyle: .Alert)
        
        let EditAction = UIAlertAction(title: "Edit", style: .Default) { (action) in
            self.dismissViewControllerAnimated(true, completion: { () -> Void in
                
            })
        }
        alertController.addAction(EditAction)
        
        let BackAction = UIAlertAction(title: "Back", style: .Default) { (action) in
            self.dismissViewControllerAnimated(true, completion: { () -> Void in
                
            })
        }
        alertController.addAction(BackAction)
        
        presentViewController(alertController, animated: true) {
            
        }
        
    }
    
    
    
}
