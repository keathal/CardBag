//
//  exampleViewCell.swift
//  CardBag
//
//  Created by Admin on 26.10.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class exampleViewCell: UITableViewCell {

    @IBOutlet weak var leftLabel: UILabel!
    @IBOutlet weak var rightLabel: UILabel!
    @IBOutlet weak var mainButton: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(title : String) {
        leftLabel.text=title
    }
}
