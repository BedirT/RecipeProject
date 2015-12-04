//
//  ingredientsPage.swift
//  recipeApplication
//
//  Created by Mustafa Bedir Tapkan on 11/23/15.
//  Copyright © 2015 Mustafa Bedir Tapkan. All rights reserved.
//

import UIKit
import Foundation

class ingredientsPage: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    @IBOutlet var tableView: UITableView!
    
    ////////////////////////////////    ////////////////////////////////
    ////////////////////////////////    ////////////////////////////////
    ////////////////////////////////    ////////////////////////////////
    ////////////////////////////////    ////////////////////////////////
    
    func data (theNum: Int) -> (Set<String>, Dictionary<String,Any> ){
       
        var arr: Array<Dictionary<String,Any>> = []
        var dict: Dictionary<String,Any> = [:]
        
        dict["title"] = "Baba Ghanoush"
        dict["directions"] = "Direction1"
        dict["items"] = Set(["Cucumber","Rice","Butter"])
        
        arr.append(dict)
        
        dict["title"] = "Boiled Eggs"
        dict["directions"] = "Direction2"
        dict["items"] = Set(["Cucumber","Rice"])
        
        arr.append(dict)
        
        let sets = arr[theNum]["items"] as! Set<String>
        let dictOfThat = arr[theNum] 
        
        return (sets,dictOfThat)
    
    }
    
    ////////////////////////////////    ////////////////////////////////
    ////////////////////////////////    ////////////////////////////////
    ////////////////////////////////    ////////////////////////////////
    ////////////////////////////////    ////////////////////////////////
    ////////////////////////////////    ////////////////////////////////
    
    let tableData : [String] = ["Rice","Butter","Salmon","Egg","Eggplant","Onions","Garlic","Lemonjuice","Parsley","Chocolate" ,"Vanilla","Flour","Lettuce","Spinach", "Leaf","Cucumber", "Tomato", "Potatoes","Egg yolks","Egg whites","Steaks", "Vegetable oil"]
    
    var choosenSet : Set<String> = []
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // REGISTER CUSTOM CELL
        
        let nib = UINib(nibName: "vwTblCell" , bundle: nil)
        tableView.registerNib(nib, forCellReuseIdentifier: "cell")
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell: TblCell = self.tableView.dequeueReusableCellWithIdentifier("cell") as! TblCell
        cell.labelInCell.text = tableData[indexPath.row]//data.myFunc().myset[indexPath.row]
        cell.checkBoxInCell.tag = indexPath.row
        cell.checkBoxInCell.addTarget(self, action: Selector("yourCheckBoxClicked:"), forControlEvents: .TouchUpInside)
        return cell
    }
    
    func yourCheckBoxClicked(cbx:UIButton){
        
        let picked = self.tableData[cbx.tag]
        if choosenSet.contains(picked) {
            choosenSet.remove(picked) // uncheck
        } else {
            choosenSet.insert(picked) // check
        }
        print(choosenSet)
    
    }
    
    var myMatchedArray : Array<Dictionary<String,Any>> = []
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let matchesPage: matchesPageViewController = segue.destinationViewController as! matchesPageViewController
        
        for var i = 0 ; i < 2 ; i++ {
            if choosenSet.isSubsetOf(data(i).0) == true {
                self.myMatchedArray.insert(self.data(i).1, atIndex: i)
            }
        }
        
        for var i = 0 ; i < myMatchedArray.count ; i++ {
            matchesPage.dataArray.append(myMatchedArray[i])
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
//    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//        let data = myMatchedArray[indexPath.row]
//        self.performSegueWithIdentifier("matchesPageViewController", sender: data as? AnyObject)
//    }
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        if (segue.identifier == "matchesPageViewController") {
//            let actViewController:matchesPageViewController = segue.destinationViewController as! matchesPageViewController
//            actViewController.dataArray = sender as! Array<Dictionary<String,Any>>
//        }
//    }
    
}
