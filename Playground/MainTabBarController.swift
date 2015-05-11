//
//  MainTabBarController.swift
//  Playground
//
//  Created by Yi Qin on 5/10/15.
//  Copyright (c) 2015 Yi Qin. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let vc1 = GalleryViewController(nibName: nil, bundle: nil)
        let navigationController1 = MainTabNavigationController(rootViewController: vc1)
        navigationController1.title = "Gallery"
        
        let vc2 = MyPlaygroundsViewController(nibName: nil, bundle: nil)
        let navigationController2 = MainTabNavigationController(rootViewController: vc2)
        navigationController2.title = "Playgrounds"
        
        setViewControllers([navigationController1, navigationController2], animated: true)
        
    }
    
    

}
