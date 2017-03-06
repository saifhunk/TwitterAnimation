//
//  DealsTableViewCell.swift
//  DemoBuisness
//
//  Created by Saif Chaudhary on 1/23/17.
//  Copyright © 2017 Saif Chaudhary. All rights reserved.
//

import UIKit

class DealsTableViewCell: UITableViewCell {

    @IBOutlet weak var constraintHeightCollectionView: NSLayoutConstraint!
    @IBOutlet weak var labelDeals: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!{
        didSet{
            collectionView.contentInset = UIEdgeInsetsMake(0, 16, 0, 0)
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        constraintHeightCollectionView.constant =  ScreenSize.SCREEN_WIDTH * 0.48
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}


extension DealsTableViewCell : UICollectionViewDelegate , UICollectionViewDataSource{
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            
           
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DealsCollectionViewCell" ,
                                                          for: indexPath)
            
            return cell
            
        }
        
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return 10
        }
        
        func numberOfSections(in collectionView: UICollectionView) -> Int{
            
            return 1
        }
        
        
        
        func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
           
        }
        
    
        
    }
    
    
    extension DealsTableViewCell : UICollectionViewDelegateFlowLayout{
        
        func collectionView(_ collectionView: UICollectionView,
                            layout collectionViewLayout: UICollectionViewLayout,
                            sizeForItemAt indexPath: IndexPath) -> CGSize {
            
            
            let screenwith  = ScreenSize.SCREEN_WIDTH
            let colum:Float = 2.0, spacing:Float = 8.0;
            let value = floorf((Float(screenwith) - (colum - 1) * spacing) / colum)
            let cellHeight = screenwith*0.48
            let cellWidth = CGFloat(value + (value / 1.3 ))

            
            return  CGSize(width: cellWidth, height: cellHeight)
            
        }

        
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets{
            
            return UIEdgeInsetsMake(0, 0, 0, 0)
        }
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat{
            
            return 8
        }
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat{
            
            return 0
        }
}
