//
//  matchesPageViewController.swift
//  recipeApplication
//
//  Created by Mustafa Bedir Tapkan on 11/23/15.
//  Copyright © 2015 Mustafa Bedir Tapkan. All rights reserved.
//

import UIKit
import Foundation

class matchesPageViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var matchesTableView: UITableView!
    
    var dataArray: Array<Dictionary<String,Any>> = []
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // REGISTER CUSTOM CELL
        
        let nib = UINib(nibName: "vwTblCellForMatches" , bundle: nil)
        matchesTableView.registerNib(nib, forCellReuseIdentifier: "cell")
        print(dataArray)
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return dataArray.count
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell: TblCellForMatches = self.matchesTableView.dequeueReusableCellWithIdentifier("cell") as! TblCellForMatches
        cell.matchesLabel.text = dataArray[indexPath.row]["title"] as? String
        //data.myFunc().myset[indexPath.row]
        
        cell.matchesImage.image = UIImage(named: dataArray[indexPath.row]["title"] as! String)
        // if images name is same as in tableData put it in front of label
        
        return cell
    }

    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 140
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let identifier = segue.identifier where identifier == "mySegueForRecipes" {
            let recipesPage: recipesPageViewController = segue.destinationViewController as! recipesPageViewController
            let indexpath = sender as? NSIndexPath
            recipesPage.labelTitle = dataArray[(indexpath?.row)!]["title"] as! String
            recipesPage.labelDescription = dataArray[(indexpath?.row)!]["directions"] as! String

            
            
        }
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("mySegueForRecipes", sender: indexPath )
    }
    
}