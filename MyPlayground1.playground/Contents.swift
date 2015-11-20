//: Playground - noun: a place where people can play

import UIKit

let item1 = Set(["Egg"])
var chosenItem = Set(["Egg", "Rice"])

var arr: Array<Dictionary<String,Any>> = []

var dict: Dictionary<String,Any> = [:]

dict

dict.updateValue("Boiled Eggs", forKey: "title")
dict.updateValue("1.)Place the eggs in a medium saucepan and cover with room temperature water. Bring the eggs to a boil, remove from the heat and let sit for 8 minutes. Shock the eggs in cold water to stop the cooking and shrink the egg from the shell. Peel.", forKey: "directions")
dict.updateValue(Set(["Egg"]), forKey: "items")

arr.append(dict)

dict.updateValue("Perfect Basic White Rice", forKey: "title")
dict.updateValue("In a saucepan with a good fitting lid bring water, salt and butter if desired to a boil.Add rice and stir.Cover and reduce heat to medium low. You will know that your temperature is correct if a little steam is visible leaking from the lid. A lot of steam means your heat is too high.Cook for 20 minutes.DO NOT LIFT LID!The steam that is trapped inside the pan is what allows the rice to cook properly.Remove from heat and fluff with fork.Serve!", forKey: "directions")
dict.updateValue(Set(["White Rice,butter"]), forKey: "items")

arr.append(dict)

dict.updateValue("Simple and Healthy Salmon", forKey: "title")
dict.updateValue("Lay each salmon fillet onto a piece of aluminum foil skin-side down. Add salt and freshly ground black pepper.Wrap each fillet tightly in the foil. Be sure to make an airtight seal. I fold the foil lengthwise and continue to fold along the seam until the fish is firmly wrapped. Fold/roll in each remaining end until the fish is fully enclosed.Place the wrapped salmon fillets into a large saucepan and cover completely with cold water. Bring to the boil over a medium heat. Reduce heat and simmer gently for 3 minutes.Remove the parcels from the saucepan. Carefully open each parcel and remove the skin from the fish.Serve the salmon topped with your choice of toppings such as salsa, pesto, mango salsa, chunky tomato. Serve with a salad or steamed vegetables.", forKey: "directions")
dict.updateValue(Set(["salmon"]), forKey: "items")

arr.append(dict)

dict.updateValue("Baba Gournish", forKey: "title")
dict.updateValue("Preheat barbecue grill on high heat.Using a sharp knife or skewer, pierce eggplant 8 times. Place onto grill. Cover with barbecue lid or a large roasting pan. Cook for 40 minutes, turning every 10 minutes, or until soft. Remove to a plate to cool.Cut eggplant in half. Use a large metal spoon to scoop out flesh. Discard skin. Place flash into a food processor with onions, garlic and lemon juice. Process until well combined.Transfer to a bowl. Add parsley, and salt and pepper. Stir to combine. Cover.Refrigerate until required.", forKey: "directions")
dict.updateValue(Set(["large eggplant,onions,finally chopped,garlic, crashed,tablespoons lemonjuice,cup parsley, finally chopped"]), forKey: "items")

arr.append(dict)

dict.updateValue("Really Fudgy Brownies", forKey: "title")
dict.updateValue("Melt butter and unsweetened chocolate together; allow cooling.Mix together eggs and sugar, make sure they are blended well; add cooled chocolate, vanilla, and salt.Add flour and mix just until blended.Bake in a greased 9x13 pan at 325° for 30-35 minutes", forKey: "directions")
dict.updateValue(Set(["1cup butter,6ounces unsweetened chocolate,4eggs,2cups sugar,1teaspoon vanilla,flour"]), forKey: "items")

arr.append(dict)



dict.updateValue("Simple Healthy Summer Salad", forKey: "title")
dict.updateValue("Assemble all ingredients and toss gently to mix well.May be served with salad dressing of choice and crackers or bread.", forKey: "directions")
dict.updateValue(Set(["1⁄2head lettuce, washed, torn into bite sized pieces,4ounces spinach, fresh whole leaf,1cucumber, peeled, quartered, and sliced thin,1fresh tomato, washed and diced,1onion, washed and minced"]), forKey: "items")

arr.append(dict)



dict.updateValue("Fried Mashed Patatoes", forKey: "title")
dict.updateValue("1.Add the onion to the mashed potatoes.Form into hamburger shape.Dip patties in flour on both sides.Fry in some hot grease until golden brown on each side.", forKey: "directions")
dict.updateValue(Set(["mash potatoes,onion"]), forKey: "items")

arr.append(dict)

dict.updateValue("Chocolate Truffle Cake", forKey: "title")
dict.updateValue("Melt chocolate with butter. Cool.Beat 2/3 Cup of sugar with egg yolks till thick and lemon coloured.Add Chocolate mixture and flour. blend well.Beat egg whites till soft peaks form. Add 2 Tbsp sugar and beat till stiff and shiny peaks form.Fold Chocolate mixture into egg whites. Blend well.Pour into greased and floured springform pan.Bake at 375 for 35 - 40 minute.Cake will be moist in centre. Cool.  9.Cake will fall in centre.Melt chocolate with butter and water.Blend until smooth.Spread over cake.Garnish:.Melt chocolate. Put in Sandwich bag and cut a very small hole in 1 corner. Decorate cake with con centric circles. Starting at the centre draw a knife lightly (do not cut cake) through circles to outside edge. This will create a pattern similar to spider web.", forKey: "directions")
dict.updateValue(Set(["6(1 ounce) semi-sweet chocolate baking squares,3⁄4cup butter,2⁄3cup granulated sugar,4egg yolks,1⁄3cup all-purpose flour,4egg whites,granulated sugar"]), forKey: "items")

arr.append(dict)


dict.updateValue("Pan Seared Steak", forKey: "title")
dict.updateValue("Remove steak(s) from fridge and start bringing them to room temperature,After 30 to 45 minutes, place a 10 to 12-inch cast iron skillet in oven and heat oven to 500 degrees F.,3When oven reaches temperature, remove the pan and place it on a burner over high heat,4.Coat steak(s) lightly with oil and season both sides with a generous pinch of salt. Grind on black pepper to taste,5.Immediately place steak(s) in the middle of the hot, dry pan. Cook 30 to 60 seconds without moving. Turn the steak(s) with tongs and cook another 30 to 60 seconds, then put the pan straight into the oven for 3 to 5 minutes. Flip steak(s) and cook for another 3 to 5 minutes. (The time in the oven depends on how rare you like your steaks. The time given is for medium, but depends on number of steaks, etc. as well,6.Remove the steak(s) from the pan, cover loosely with foil, and rest for 2 minutes,7.Serve whole or slice thin and fan onto plate.", forKey: "directions")

dict.updateValue(Set(["Steaks 1 1/2-inch thick,Vegetable oil, to coat,Salt &  ground pepper"]), forKey: "items")

arr.append(dict)

let set1 = arr[0]["items"] as? Set<String> ?? Set<String>()
let set2 = arr[1]["items"] as? Set<String> ?? Set<String>()
let set3 = arr[2]["items"] as? Set<String> ?? Set<String>()
let set4 = arr[3]["items"] as? Set<String> ?? Set<String>()
let set5 = arr[4]["items"] as? Set<String> ?? Set<String>()
let set6 = arr[5]["items"] as? Set<String> ?? Set<String>()
let set7 = arr[6]["items"] as? Set<String> ?? Set<String>()
let set8 = arr[7]["items"] as? Set<String> ?? Set<String>()
let set9 = arr[8]["items"] as? Set<String> ?? Set<String>()



set1.isSubsetOf(set2)
item1.isSubsetOf(set2)
set2.isSubsetOf(set1)
chosenItem.isSubsetOf(set1)
