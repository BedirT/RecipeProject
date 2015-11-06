//
//  ViewController.swift
//  recipeApplication
//
//  Created by Mustafa Bedir Tapkan on 10/26/15.
//  Copyright © 2015 Mustafa Bedir Tapkan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func didTapFacebook(sender: AnyObject) {
        UIApplication.sharedApplication().openURL(NSURL(string: "http://www.facebook.com")!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    
    }
        

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}