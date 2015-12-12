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
    
    func data (theNum: Int) -> (Set<String>, Dictionary<String,Any>, Int ){
        
        var arr: Array<Dictionary<String,Any>> = []
        var dict: Dictionary<String,Any> = [:]
        
        dict["title"] = "Baba Ghanoush"
        dict["directions"] = "Direction1"
        dict["items"] = Set(["Eggplant","Onion","Garlic","Lemon","Parsley"])
        
        arr.append(dict)
        
        dict["title"] = "Boiled Eggs"
        dict["directions"] = "Direction2"
        dict["items"] = Set(["Egg"])
        
        arr.append(dict)
        
        dict["title"] = "Perfect Basic White Rice"
        dict["directions"] = "Direction3"
        dict["items"] = Set(["Rice","Butter"])
        
        arr.append(dict)
        
        dict["title"] = "Simple and Healthy Salmon"
        dict["directions"] = "Direction4"
        dict["items"] = Set(["Salmon"])
        
        arr.append(dict)
        
        dict["title"] = "Really Fudgy Brownies"
        dict["directions"] = "Direction5"
        dict["items"] = Set(["Butter","Chocolate","Egg","Sugar","Vanilla","Flour"])
        
        arr.append(dict)
        
        dict["title"] = "Simple Healthy Summer Salad"
        dict["directions"] = "Direction6"
        dict["items"] = Set(["Lettuce","Spinach","Cucumber","Tomato","Onion"])
        
        arr.append(dict)
        
        dict["title"] = "Fried Mashed Patatoes"
        dict["directions"] = "Direction7"
        dict["items"] = Set(["Potato","Onion"])
        
        arr.append(dict)
        
        dict["title"] = "Chocolate Truffle Cake"
        dict["directions"] = "Direction8"
        dict["items"] = Set(["Chocolate","Butter","Egg","Flour","Sugar"])
        
        arr.append(dict)
        
        dict["title"] = "Pan Seared Steak"
        dict["directions"] = "Direction9"
        dict["items"] = Set(["Steak","Vegetable oil"])
        
        arr.append(dict)
        
        dict["title"] = "Gnocchi"
        dict["directions"] = "Direction10"
        dict["items"] = Set(["Potato","Egg","Flour"])
        
        arr.append(dict)
        
        let sets = arr[theNum]["items"] as! Set<String>
        let dictOfThat = arr[theNum]
        
        return (sets,dictOfThat,arr.count)
        
    }
    
//        func data (theNum: Int) -> (Set<String>, Dictionary<String,Any>, Int ){
//            
//            var arr: Array<Dictionary<String,Any>> = []
//            var dict: Dictionary<String,Any> = [:]
//            
//            dict["title"] = "Baba Ghanoush"
//            dict["directions"] = "Direction1"
//            dict["items"] = Set(["Cucumber","Rice","Butter"])
//            
//            arr.append(dict)
//            
//            dict["title"] = "Boiled Eggs"
//            dict["directions"] = "Direction2"
//            dict["items"] = Set(["Cucumber","Rice"])
//            
//            arr.append(dict)
//            
//            let sets = arr[theNum]["items"] as! Set<String>
//            let dictOfThat = arr[theNum]
//            
//            return (sets,dictOfThat,arr.count)
//            
//        }
    
    ////////////////////////////////    ////////////////////////////////
    ////////////////////////////////    ////////////////////////////////
    ////////////////////////////////    ////////////////////////////////
    ////////////////////////////////    ////////////////////////////////
    ////////////////////////////////    ////////////////////////////////
    
    let tableData : [String] = ["Rice","Butter","Salmon","Egg","Eggplant","Onion","Garlic","Lemonjuice","Parsley","Chocolate" ,"Vanilla","Flour","Lettuce","Spinach", "Leaf","Cucumber", "Tomato", "Potato","Egg yolk","Egg white","Steak", "Vegetable oil"]
    
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
        

        for var i = 0 ; i < 10 ; i++ {

        for var i = 0, a = 0 ; i < data(0).2 ; i++ {
            print("this")

            if choosenSet.isSubsetOf(data(i).0) == true {
                self.myMatchedArray.insert(self.data(i).1, atIndex: a)
                a++
            }
        }
        
        for var i = 0 ; i < myMatchedArray.count ; i++ {
            //print(myMatchedArray[i])
            matchesPage.dataArray.append(myMatchedArray[i])
        }
    }
    
    func didReceiveMemoryWarning() {
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
    //
    //
    //            
    //        }
    //    }
    

    }
}