//
//  matchesPageViewController.swift
//  recipeApplication
//
//  Created by Mustafa Bedir Tapkan on 11/23/15.
//  Copyright © 2015 Mustafa Bedir Tapkan. All rights reserved.
//

import UIKit

class matchesPageViewController: UIViewController {

    @IBOutlet weak var tryingLabel: UILabel!
    
    let secondPage = ingredientsPage()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //tryingLabel.text = secondPage.yourCheckBoxClicked
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
