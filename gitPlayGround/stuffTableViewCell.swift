//
//  stuffTableViewCell.swift
//  gitPlayGround
//
//  Created by Justin Snider on 9/20/18.
//  Copyright © 2018 Justin Snider. All rights reserved.
//

import UIKit

class stuffTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
