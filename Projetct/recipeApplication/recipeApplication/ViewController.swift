//
//  ViewController.swift
//  recipeApplication
//
//  Created by Mustafa Bedir Tapkan on 10/26/15.
//  Copyright © 2015 Mustafa Bedir Tapkan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var ingredientTable: UITableView!
    
    
    
    ///////////////////////////////////
    /////////// SOCIAL LINKS //////////

    @IBAction func didTapFacebook(sender: AnyObject) {
        UIApplication.sharedApplication().openURL(NSURL(string: "http://www.facebook.com")!)
    }
    @IBAction func didTapTwitter(sender: AnyObject) {
        UIApplication.sharedApplication().openURL(NSURL(string: "http://www.twitter.com")!)
    }
    @IBAction func didTapYoutube(sender: AnyObject) {
        UIApplication.sharedApplication().openURL(NSURL(string: "http://www.youtube.com")!)
    }
    @IBAction func didTapAppStore(sender: AnyObject) {
        UIApplication.sharedApplication().openURL(NSURL(string: "http://www.appstore.com")!)
    }
    
    ///////////////////////////////////
    ///////////////////////////////////
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}