//
//  CellIdentifiers.swift
//  WedLikeThat
//
//  Created by cblmacmini on 7/29/16.
//  Copyright © 2016 Codebrew. All rights reserved.



import Foundation


enum SegueId {

    case segueSignUp2
    case propShopCell
    case weddingCell
    case ideaCell
    case reviewCell
    case vendorCatCell
    case vendorFilterCell
    case ideaDetailCell
    case weddingImageCollectionViewCell
    case settingsCell
    case vendorFullDetailCell
    
    func string() -> String {
        
        switch self {
            
        case .segueSignUp2:
            return "SegueSignUp2"
        case .propShopCell:
            return "PropShopCell"
        
        case .weddingCell:
            return "WeddingCell"
        
        case .reviewCell:
            return "ReviewCell"
        
        case .vendorCatCell :
            return "VendorCatCell"
            
        case .vendorFilterCell :
            return "VendorFilterCell"
            
        case .ideaDetailCell :
            return "IdeaDetailCell"
        
        case .weddingImageCollectionViewCell :
            return "WeddingImageCollectionViewCell"
        
        case .ideaCell :
            return "IdeaCell"
        
        case .settingsCell :
            return "SettingsCell"
            
        case .vendorFullDetailCell :
            return "VendorFullDetailCell"
            
        }
        
        
        
        
    }
    
    
}
