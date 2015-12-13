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
        dict["directions"] = "Preheat barbecue grill on high heat.Using a sharp knife or skewer, pierce eggplant 8 times. Place onto grill. Cover with barbecue lid or a large roasting pan. Cook for 40 minutes, turning every 10 minutes, or until soft. Remove to a plate to cool.Cut eggplant in half. Use a large metal spoon to scoop out flesh. Discard skin. Place flash into a food processor with onions, garlic and lemon juice. Process until well combined.Transfer to a bowl. Add parsley, and salt and pepper. Stir to combine. Cover.Refrigerate until required."
        dict["items"] = Set(["Eggplant","Onion","Garlic","Lemon","Parsley"])
        
        arr.append(dict)
        
        dict["title"] = "Boiled Eggs"
        dict["directions"] = "1.)Place the eggs in a medium saucepan and cover with room temperature water. Bring the eggs to a boil, remove from the heat and let sit for 8 minutes. Shock the eggs in cold water to stop the cooking and shrink the egg from the shell. Peel."
        dict["items"] = Set(["Egg"])
        
        arr.append(dict)
        
        dict["title"] = "Perfect Basic White Rice"
        dict["directions"] = "In a saucepan with a good fitting lid bring water, salt and butter if desired to a boil.Add rice and stir.Cover and reduce heat to medium low. You will know that your temperature is correct if a little steam is visible leaking from the lid. A lot of steam means your heat is too high.Cook for 20 minutes.DO NOT LIFT LID!The steam that is trapped inside the pan is what allows the rice to cook properly.Remove from heat and fluff with fork.Serve!"
        dict["items"] = Set(["Rice","Butter"])
        
        arr.append(dict)
        
        dict["title"] = "Simple and Healthy Salmon"
        dict["directions"] = "Lay each salmon fillet onto a piece of aluminum foil skin-side down. Add salt and freshly ground black pepper.Wrap each fillet tightly in the foil. Be sure to make an airtight seal. I fold the foil lengthwise and continue to fold along the seam until the fish is firmly wrapped. Fold/roll in each remaining end until the fish is fully enclosed.Place the wrapped salmon fillets into a large saucepan and cover completely with cold water. Bring to the boil over a medium heat. Reduce heat and simmer gently for 3 minutes.Remove the parcels from the saucepan. Carefully open each parcel and remove the skin from the fish.Serve the salmon topped with your choice of toppings such as salsa, pesto, mango salsa, chunky tomato. Serve with a salad or steamed vegetables."
        dict["items"] = Set(["Salmon"])
        
        arr.append(dict)
        
        dict["title"] = "Really Fudgy Brownies"
        dict["directions"] = "Melt butter and unsweetened chocolate together; allow cooling.Mix together eggs and sugar, make sure they are blended well; add cooled chocolate, vanilla, and salt.Add flour and mix just until blended.Bake in a greased 9x13 pan at 325° for 30-35 minutes"
        dict["items"] = Set(["Butter","Chocolate","Egg","Sugar","Vanilla","Flour"])
        
        arr.append(dict)
        
        dict["title"] = "Simple Healthy Summer Salad"
        dict["directions"] = "Assemble all ingredients and toss gently to mix well.May be served with salad dressing of choice and crackers or bread."
        dict["items"] = Set(["Lettuce","Spinach","Cucumber","Tomato","Onion"])
        
        arr.append(dict)
        
        dict["title"] = "Fried Mashed Potatoes"
        dict["directions"] = "1.Add the onion to the mashed potatoes.Form into hamburger shape.Dip patties in flour on both sides.Fry in some hot grease until golden brown on each side."
        dict["items"] = Set(["Potato","Onion"])
        
        arr.append(dict)
        
        dict["title"] = "Chocolate Truffle Cake"
        dict["directions"] = "Melt chocolate with butter. Cool.Beat 2/3 Cup of sugar with egg yolks till thick and lemon coloured.Add Chocolate mixture and flour. blend well.Beat egg whites till soft peaks form. Add 2 Tbsp sugar and beat till stiff and shiny peaks form.Fold Chocolate mixture into egg whites. Blend well.Pour into greased and floured springform pan.Bake at 375 for 35 - 40 minute.Cake will be moist in centre. Cool.  9.Cake will fall in centre.Melt chocolate with butter and water.Blend until smooth.Spread over cake.Garnish:.Melt chocolate. Put in Sandwich bag and cut a very small hole in 1 corner. Decorate cake with con centric circles. Starting at the centre draw a knife lightly (do not cut cake) through circles to outside edge. This will create a pattern similar to spider web."
        dict["items"] = Set(["Chocolate","Butter","Egg","Flour","Sugar"])
        
        arr.append(dict)
        
        dict["title"] = "Pan Seared Steak"
        dict["directions"] = "Remove steak(s) from fridge and start bringing them to room temperature,After 30 to 45 minutes, place a 10 to 12-inch cast iron skillet in oven and heat oven to 500 degrees F.,3When oven reaches temperature, remove the pan and place it on a burner over high heat,4.Coat steak(s) lightly with oil and season both sides with a generous pinch of salt. Grind on black pepper to taste,5.Immediately place steak(s) in the middle of the hot, dry pan. Cook 30 to 60 seconds without moving. Turn the steak(s) with tongs and cook another 30 to 60 seconds, then put the pan straight into the oven for 3 to 5 minutes. Flip steak(s) and cook for another 3 to 5 minutes. (The time in the oven depends on how rare you like your steaks. The time given is for medium, but depends on number of steaks, etc. as well,6.Remove the steak(s) from the pan, cover loosely with foil, and rest for 2 minutes,7.Serve whole or slice thin and fan onto plate."
        dict["items"] = Set(["Steak","Vegetable oil"])
        
        arr.append(dict)
        
        dict["title"] = "Gnocchi"
        dict["directions"] = "Bring a large pot of salted water to a boil. Peel potatoes and add to pot. Cook until tender but still firm, about 15 minutes. Drain, cool and mash with a fork or potato masher 2.Combine 1 cup mashed potato, flour and egg in a large bowl. Knead until dough forms a ball. Shape small portions of the dough into long 'snakes'. On a floured surface, cut snakes into half-inch pieces 3.Bring a large pot of lightly salted water to a boil. Drop in gnocchi and cook for 3 to 5 minutes or until gnocchi have risen to the top; drain and serve."
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
       
        for var i = 0, a = 0 ; i < data(0).2 ; i++ {
            
            if data(i).0.isSubsetOf(choosenSet) == true {
                self.myMatchedArray.insert(self.data(i).1, atIndex: a)
                a++
            }
        }
        
        for var i = 0 ; i < myMatchedArray.count ; i++ {
            //print(myMatchedArray[i])
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
    //
    //
    //            
    //        }
    //    }
    

}