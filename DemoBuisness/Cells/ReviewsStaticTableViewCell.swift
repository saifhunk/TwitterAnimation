//
//  ReviewsStaticTableViewCell.swift
//  DemoBuisness
//
//  Created by Saif Chaudhary on 1/23/17.
//  Copyright © 2017 Saif Chaudhary. All rights reserved.
//

import UIKit

class ReviewsStaticTableViewCell: UITableViewCell {

    @IBOutlet var arrayLabelTotalReviews: [UILabel]!
    @IBOutlet var arrayProgress: [LinearProgressView]!
    @IBOutlet weak var labelBasedOnRatings: UILabel!
    @IBOutlet weak var labelDesc: UILabel!
    @IBOutlet weak var imageViewUser: UIImageView!
    @IBOutlet weak var btnViewAll: UIButton!
    @IBOutlet weak var labelTotalReviews: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
