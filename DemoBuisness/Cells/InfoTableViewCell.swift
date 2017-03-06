//
//  InfoTableViewCell.swift
//  DemoBuisness
//
//  Created by Saif Chaudhary on 1/23/17.
//  Copyright © 2017 Saif Chaudhary. All rights reserved.
//

import UIKit

class InfoTableViewCell: UITableViewCell {

    @IBOutlet weak var labelWorkingHours: UILabel!
    @IBOutlet weak var labelWorkingHoursStatic: UILabel!
    @IBOutlet weak var labelAddress: UILabel!
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var btnDirections: UIButton!
    @IBOutlet weak var imageViewMap: UIImageView!
    @IBOutlet weak var labelAddressStatic: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
