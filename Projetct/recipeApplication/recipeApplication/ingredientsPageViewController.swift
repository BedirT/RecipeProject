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
    
    let tableData : [String] = ["First","Second","Third","Fourth","Fifth","Sixth"]
    
    let data = Data().myFunc()
    
//    func aa() {
//        for var i = 0 ; i < data.counter ; i++ {
//            tableData.insert(data.myset, atIndex: <#T##Int#>)
//        }
//    }
    
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
        choosenSet.insert(self.tableData[cbx.tag])
        print(choosenSet)
    
    }
    
    var tryingSet : Set<String> = []
    var myMatchedArray : Array<Set<String>> = []
    
    @IBAction func thatsIt(sender: AnyObject) {
        
        if choosenSet.isSubsetOf(tryingSet) == true {
            myMatchedArray.insert(choosenSet, atIndex: 0)
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
        

}
