//
//  CellIdentifiers.swift
//  WedLikeThat
//
//  Created by cblmacmini on 7/29/16.
//  Copyright © 2016 Codebrew. All rights reserved.



import Foundation


enum cellId {

    case categoryCell
    case recommendedCell
    case CategoryReusableView
    case nearByListCell
    case reviewCell
    case businessSearchCell
    case vendorFilterCell
    case ideaDetailCell
    case weddingImageCollectionViewCell
    case settingsCell
    case vendorFullDetailCell
    case HomeTableViewCell
    case BuisnessOfWeekCollectionViewCell
    case MenuTableViewCell
    
    func string() -> String {
        
        switch self {
            
        case .categoryCell:
            return "CategoryCell"
        case .recommendedCell:
            return "RecommendedCell"
        
        case .CategoryReusableView:
            return "CategoryReusableView"
        
        case .nearByListCell:
            return "NearByListCell"
        //
        case .businessSearchCell :
            return "BusinessSearchCell"
            
        case .vendorFilterCell :
            return "VendorFilterCell"
            
        case .ideaDetailCell :
            return "IdeaDetailCell"
        
        case .weddingImageCollectionViewCell :
            return "WeddingImageCollectionViewCell"
        

        
        case .settingsCell :
            return "SettingsCell"
            
        case .vendorFullDetailCell :
            return "VendorFullDetailCell"
            
        case .HomeTableViewCell :
            return "HomeTableViewCell"
            
        case .BuisnessOfWeekCollectionViewCell :
            return "BuisnessOfWeekCollectionViewCell"
            
        case .MenuTableViewCell:
            return "MenuTableViewCell"
            
        default : return ""
            
        }
        
        
        

    }
    
    
}
