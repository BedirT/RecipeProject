//
//  TblCellForMatches.swift
//  recipeApplication
//
//  Created by Mustafa Bedir Tapkan on 11/25/15.
//  Copyright © 2015 Mustafa Bedir Tapkan. All rights reserved.
//

import UIKit

class TblCellForMatches: UITableViewCell {

    @IBOutlet weak var matchesImage: UIImageView!
    @IBOutlet weak var matchesLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
