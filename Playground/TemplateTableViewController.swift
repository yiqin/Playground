//
//  TempleTableViewController.swift
//  Playground
//
//  Created by Yi Qin on 5/10/15.
//  Copyright (c) 2015 Yi Qin. All rights reserved.
//

import UIKit

class TemplateTableViewController: UIViewController, ASTableViewDataSource, ASTableViewDelegate  {
    
    
    var tableView: ASTableView
    
    //MARK: Testing now....
    var playgrounds:[TestPlayground] = []
    
    
    init(){
        self.tableView = ASTableView()
        
        super.init(nibName: nil, bundle: nil)
        title = "My List".uppercaseString
        
        tableView.asyncDataSource = self
        tableView.asyncDelegate = self
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customizeView()
        
        playgrounds = TestDataManager.getTestPlaygrounds()
        view.addSubview(tableView)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        tableView.frame = self.view.bounds
    }
    
    func customizeView(){
        title = "Secret"
        navigationItem.backBarButtonItem = UIBarButtonItem(title:"", style:.Plain, target:nil, action:nil)
    }
    
    func numberOfSectionsInTableView(tableView: UITableView!) -> Int {
        return 1
    }
    
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return playgrounds.count
    }
    
    
    func tableView(tableView: ASTableView!, nodeForRowAtIndexPath indexPath: NSIndexPath!) -> ASCellNode! {
        let playground = playgrounds[indexPath.row]
        let node = PlaygroundCellNode(testPlayground: playground)
        return node
    }
    
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        
    }

    

}
