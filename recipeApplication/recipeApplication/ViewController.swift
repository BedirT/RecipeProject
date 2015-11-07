//
//  ViewController.swift
//  recipeApplication
//
//  Created by Mustafa Bedir Tapkan on 10/26/15.
//  Copyright © 2015 Mustafa Bedir Tapkan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    ///////////////////////////////////
    //////////// MY LABELS ////////////
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
    @IBOutlet weak var label7: UILabel!
    @IBOutlet weak var label8: UILabel!
    
    func labelsAreHere () -> [Int] {
        var label: Array = [label1,label2,label3,label4,label5,label6,label7,label8]
        var myTag: Array = [1]
        myTag.removeAll()
        for var a = 0 ; a < label.count ; a++ {
             myTag.append(label[a].tag)
        }
        return myTag
    }
    
    ///////////////////////////////////
    
    ///////////////////////////////////
    //////////// CHECKBOXES ///////////
    
    @IBAction func box1(sender: checkBox) {
    }
    @IBAction func box2(sender: checkBox) {
    }
    @IBAction func box3(sender: checkBox) {
    }
    @IBAction func box4(sender: checkBox) {
    }
    @IBAction func box5(sender: checkBox) {
    }
    @IBAction func box6(sender: checkBox) {
    }
    @IBAction func box7(sender: checkBox) {
    }
    @IBAction func box8(sender: checkBox) {
    }
    
    ///////////////////////////////////
    ///////////////////////////////////
    
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