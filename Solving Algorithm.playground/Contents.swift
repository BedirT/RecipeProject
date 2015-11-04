import UIKit

let item1 = Set(["Egg"])                        // THIS IS NOT NECCESARY
var choosenItem = Set(["Egg","White rice"])     // THIS PLACE IS FOR THE DATA THAT COMES FROM OUR CHECKBOXES
                                                // SO NOW WE CHOSE OUR INGR. WE WILL MATCH THEM


var arr: Array<Dictionary<String,Any>> = []     // HERE IS AN EMPTY ARRAY FOR US TO FILL

var checkedItems = Set(["Thing"])
                                                // HERE IS OUR EMPTY SET TO FILL WITH OUR CHECKLISTS
checkedItems.remove("Thing")

checkedItems

var dict: Dictionary<String,Any> = [:]

//FIRST INPUT
dict.updateValue("Boiled Eggs", forKey: "title")
dict.updateValue("1.Place the eggs in a medium saucepan and cover with room temperature water. Bring the eggs to a boil, remove from the heat and let sit for 8 minutes. Shock the eggs in cold water to stop the cooking and shrink the egg from the shell. Peel.", forKey: "directions")
dict.updateValue(Set(["Egg"]), forKey: "items") // WE CAN USE SETS DIRECTLY INSIDE THE UPDATE VALUE
                                                // SO WE DON'T REALLY HAVE TO CREATE A CONSTANT FOR THAT

arr.append(dict)                                // WE ARE NOW ADDING OUR FIRST DICTIONARY TO ARRAY[0]


// SECOND INPUT
dict.updateValue("Perfect Basic White Rice", forKey: "title")
dict.updateValue("1.In a saucepan with a good fitting lid bring water, salt and butter if desired to a boil. 2.Add rice and stir. 3.Cover and reduce heat to medium low. You will know that your temperature is correct if a little steam is visible leaking from the lid. A lot of steam means your heat is too high. 4.Cook for 20 minutes. 5.DO NOT LIFT LID! 6.The steam that is trapped inside the pan is what allows the rice to cook properly. 7.Remove from heat and fluff with fork. 8.Serve", forKey: "directions")
dict.updateValue(Set(["White rice"]), forKey: "items")

arr.append(dict)

let set1 = arr[0]["items"] as? Set<String> ?? Set<String>()
let set2 = arr[1]["items"] as? Set<String> ?? Set<String>()

set1.isSubsetOf(choosenItem)        // true
item1.isSubsetOf(choosenItem)       // true
set2.isSubsetOf(choosenItem)        // true
choosenItem.isSubsetOf(set1)        // false



                                           // WE ALSO WILL NEED SOMETHING THAT IS ||
                                          //   HELP US TO CREATE TITLE AND INGR.  ||
                                         //  DIRECTLY, WITHOUT ADDING IT MANUALLY ||
                                        //       SO WE SHOULD KEEP IT IN MIND     ||




