//
//  ReviewsDynamicTableViewCell.swift
//  DemoBuisness
//
//  Created by Saif Chaudhary on 1/23/17.
//  Copyright © 2017 Saif Chaudhary. All rights reserved.
//

import UIKit

class ReviewsDynamicTableViewCell: UITableViewCell {

    @IBOutlet var ArrayImageViewRating: [UIImageView]!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var imageViewUser: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
