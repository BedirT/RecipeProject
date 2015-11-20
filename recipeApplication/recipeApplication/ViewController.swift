//
//  ViewController.swift
//  recipeApplication
//
//  Created by Mustafa Bedir Tapkan on 10/26/15.
//  Copyright © 2015 Mustafa Bedir Tapkan. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource {
    
    var items = ["Cake","Olives","Oils"]
    
    @IBOutlet weak var ingredientTable: UITableView!
    
    ///////////////////////////////////
    /////////// SOCIAL LINKS //////////
    
    @IBAction func didTapFacebook(sender: AnyObject) {
        UIApplication.sharedApplication().openURL(NSURL(string: "http://www.facebook.com")!)
    }
    @IBAction func didTapTwitter(sender: AnyObject) {
        UIApplication.sharedApplication().openURL(NSURL(string: "http://www.twitter.com")!)
    }
    @IBAction func didTapYoutube(sender: AnyObject) {
        UIApplication.sharedApplication().openURL(NSURL(string: "http://www.youtube.com")!)
    }
    @IBAction func didTapAppStore(sender: AnyObject) {
        UIApplication.sharedApplication().openURL(NSURL(string: "http://www.appstore.com")!)
    }
    
    ///////////////////////////////////
    ///////////////////////////////////
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.ingredientTable.dataSource = self
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    ///////////////////////////////////
    ///////////////////////////////////
    ///////////////////////////////////
    ///////////////////////////////////
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.myFunc(<#T##data#>)
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell:ingredientCell = self.ingredientTable.dequeueReusableCellWithIdentifier("cell") as! ingredientCell
        
        cell.inCellLabel.text = self.items[indexPath.row]
        cell.checkBox.tag = indexPath.row
        cell.checkBox.addTarget(self, action: Selector("yourButtonClicked:"), forControlEvents: .TouchUpInside)
        
        return cell
    }
    
    func yourCheckBoxClicked(cbx:UIButton){
        print(self.items[cbx.tag])
    }

    ///////////////////////////////////
    ///////////////////////////////////
    ///////////////////////////////////
    ///////////////////////////////////

}