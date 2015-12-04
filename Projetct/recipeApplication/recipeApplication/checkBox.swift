//
//  checkBox.swift
//
//
//  Created by Mustafa Bedir Tapkan on 10/26/15.
//  Copyright © 2015 Big Nerd Ranch. All rights reserved.
//

import UIKit

class checkBox: UIButton {
    
    
    //images
    let checkedImage = UIImage(named: "button_checkboxFilled")
    let uncheckedImage = UIImage(named: "button_checkboxEmpty")
    
    // Bool Property
    var isChecked : Bool = false {
        didSet{
            if isChecked == true{
                self.setImage(checkedImage, forState: .Normal)
            }else {
                self.setImage(uncheckedImage, forState: .Normal)
            }
        }
    }
    
    override func awakeFromNib() {
        self.addTarget(self, action: "buttonClicked:" , forControlEvents: UIControlEvents.TouchUpInside)
        self.isChecked = false
    }
    
    
    func buttonClicked (sender:UIButton) {
        if (sender == self) {
            if isChecked == true {
                isChecked = false
                
            }else {
                isChecked = true
            }
        }
    }
}

