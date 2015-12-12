//
//  recipesPageViewController.swift
//  recipeApplication
//
//  Created by Mustafa Bedir Tapkan on 12/9/15.
//  Copyright © 2015 Mustafa Bedir Tapkan. All rights reserved.
//

import UIKit

class recipesPageViewController: UIViewController {

    @IBOutlet weak var recipeImage: UIImageView!
    @IBOutlet weak var recipeTitle: UILabel!
    @IBOutlet weak var recipeDescription: UILabel!
    @IBOutlet weak var scrollView: UIScrollView!
    
    var labelTitle : String = ""
    var labelDescription : String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.contentSize.height = 200
        recipeTitle.text = labelTitle
        recipeDescription.text = labelDescription
        recipeImage.image = UIImage(named: labelTitle)
        
        
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
