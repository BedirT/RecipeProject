//
//  ingredientCell.swift
//  recipeApplication
//
//  Created by Mustafa Bedir Tapkan on 11/11/15.
//  Copyright © 2015 Mustafa Bedir Tapkan. All rights reserved.
//

import UIKit

class ingredientCell: UITableViewCell {

    
    @IBOutlet weak var checkBox: UIButton!
    
    @IBOutlet weak var inCellLabel: UILabel!
    
    func theLabel () {
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
