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
        
        dict["title"] = "Title1"
        dict["directions"] = "Direction1"
        dict["items"] = Set(["Cucumber","Rice","Butter"])
        
        arr.append(dict)
        
        dict["title"] = "Title2"
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
    
    // let data = Data().myFunc()
    
    var choosenSet : Set<String> = []
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // REGISTER CUSTOM CELL
        
        let nib = UINib(nibName: "vwTblCell" , bundle: nil)
        tableView.registerNib(nib, forCellReuseIdentifier: "cell")
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        //return myData.myFunc().counter
        
        return tableData.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell: TblCell = self.tableView.dequeueReusableCellWithIdentifier("cell") as! TblCell
        cell.labelInCell.text = tableData[indexPath.row]//data.myFunc().myset[indexPath.row]
        cell.checkBoxInCell.tag = indexPath.row
        cell.checkBoxInCell.addTarget(self, action: Selector("yourCheckBoxClicked:"), forControlEvents: .TouchUpInside)
        
        // cell.images.image = UIImage(named: tableData[indexPath.row])
        // if images name is same as in tableData put it in front of label
        
        return cell
    }
    
    func yourCheckBoxClicked(cbx:UIButton){
        
        //choosenSet.insert(self.data.myFunc().myset[cbx.tag])// this is the checkbox label which was clicked
        let picked = self.tableData[cbx.tag]
        if choosenSet.contains(picked) {
            choosenSet.remove(picked) // uncheck
        } else {
            choosenSet.insert(picked) // check
        }
        //choosenSet.insert(self.tableData[cbx.tag])
        print(choosenSet)
    
    }
    
    var tryingSet : Set<String> = []
    var myMatchedArray : Array<Dictionary<String,Any>> = []
    
    @IBAction func thatsIt(sender: AnyObject) {
        
        for var i = 0 ; i < 2 ; i++ {
            if choosenSet.isSubsetOf(data(i).0) == true {
                self.myMatchedArray.insert(self.data(i).1, atIndex: i)
                print(myMatchedArray)
            }
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        let mathesPage: matchesPageViewController = segue.destinationViewController as! matchesPageViewController
//        
//        for var i = 0 ; i < myMatchedArray.count ; i++ {
//            mathesPage.dataArray.append(myMatchedArray[i])
//            
//        }
//    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let data = myMatchedArray[indexPath.row]
        self.performSegueWithIdentifier("matchesPageViewController", sender: thatsIt)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "matchesPageViewController") {
            let actViewController:matchesPageViewController = segue.destinationViewController as! matchesPageViewController
            actViewController.dataArray = sender as! Array<Dictionary<String,Any>>
        }
    }
    
}
