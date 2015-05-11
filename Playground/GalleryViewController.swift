//
//  DemoViewController.swift
//  Playground
//
//  Created by Yi Qin on 5/10/15.
//  Copyright (c) 2015 Yi Qin. All rights reserved.
//

import UIKit

class GalleryViewController: UIViewController, ASCollectionViewDataSource, ASCollectionViewDelegate {
    
    var collectionView:ASCollectionView
    
    //MARK: Testing now....
    var playgrounds:[TestPlayground] = []
    
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        
        collectionView = ASCollectionView(frame: CGRectZero, collectionViewLayout: MainCollectionViewFlowLayout(), asyncDataFetching: true)
        
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        
        collectionView.backgroundColor = UIColor(red: 235.0/255.0, green: 236.0/255.0, blue: 236.0/255.0, alpha: 1.0) // UIColor.whiteColor()        
        
        collectionView.asyncDataSource = self
        collectionView.asyncDelegate = self
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customizeView()
        
        playgrounds = TestDataManager.getTestPlaygrounds()
        view.addSubview(collectionView)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        collectionView.frame = self.view.bounds
    }
    
    func customizeView(){
        title = "Gallery"
        navigationItem.backBarButtonItem = UIBarButtonItem(title:"", style:.Plain, target:nil, action:nil)
    }
    
    func collectionView(collectionView: UICollectionView!, numberOfItemsInSection section: Int) -> Int {
        return playgrounds.count
    }
    
    func collectionView(collectionView: ASCollectionView!, nodeForItemAtIndexPath indexPath: NSIndexPath!) -> ASCellNode! {
        let playground = playgrounds[indexPath.row]
        let node = PlaygroundCellNode(testPlayground:playground)
        
        return node
    }
    
    func collectionView(collectionView: UICollectionView!, didSelectItemAtIndexPath indexPath: NSIndexPath!) {
        println("select \(indexPath.row)")
        
        
        let vc = UIViewController()
        let playNavigationController = PlayNavigationController(rootViewController: vc)
        
        navigationController?.presentViewController(playNavigationController, animated: true, completion: { () -> Void in
            
        })
        
    }
    
    
    // MARK: Highlight selection
    func collectionView(collectionView: UICollectionView!, shouldSelectItemAtIndexPath indexPath: NSIndexPath!) -> Bool {
        return true
    }
    
    func collectionView(collectionView: UICollectionView!, didDeselectItemAtIndexPath indexPath: NSIndexPath!) {
        let cell = self.collectionView.cellForItemAtIndexPath(indexPath)
        cell?.backgroundColor = UIColor.whiteColor()
    }
    
    func collectionView(collectionView: UICollectionView!, shouldHighlightItemAtIndexPath indexPath: NSIndexPath!) -> Bool {
        return true
    }
    
    func collectionView(collectionView: UICollectionView!, didHighlightItemAtIndexPath indexPath: NSIndexPath!) {
        let cell = self.collectionView.nodeForItemAtIndexPath(indexPath)
        cell?.backgroundColor = UIColor.redColor()
    }
    
    func collectionView(collectionView: UICollectionView!, didUnhighlightItemAtIndexPath indexPath: NSIndexPath!) {
        let cell = self.collectionView.nodeForItemAtIndexPath(indexPath)
        cell?.backgroundColor = UIColor.whiteColor()
    }
    

}
