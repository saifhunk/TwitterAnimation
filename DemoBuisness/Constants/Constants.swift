//
//  Constants.swift
//  Aybiz
//
//  Created by cbl16 on 9/14/16.
//  Copyright © 2016 Codebrew. All rights reserved.
//
//

import UIKit



enum fontSize : CGFloat {
    case small = 12.0
    case medium = 14.0
    case large = 16.0
    case xLarge = 18.0
    case xXLarge = 20.0
    case xXXLarge = 32.0
}

enum fonts {
    
    enum Gotham : String {
        case regular = "Gotham-Book"
        case bold = "Gotham-Bold"
        case medium = "Gotham-Medium"
        
        func font(_ size : fontSize) -> UIFont {
            return UIFont(name: self.rawValue, size: size.rawValue)!
        }
    }
}




enum segue : String{
    
    case unwindToDasboard  = "SegueUnwindToDasboard"
}

enum warningMessage : String{
    
    case validPassword = "Please enter a valid password."
    case validPhoneNumber = "Please enter a valid phone number"
    case validName = "Please enter a valid name"
    case validEmailAddress = "Please enter a valid email address."
    case restYourPassword = "An email was sent to you to rest your password"
    case changePassword = "Your password has been changed successfully"
    case logoutMsg = "You've been logged out successfully."
}


enum helperNames : String {
    case loader = "loader.gif"
    case oops = "opps"
    case placeholder = "placeholder"
    case facebook = "facebook"
    case Cancel = "Cancel"
    case VendorDetailNotFound = "Vendor Details Not Found"
    
}

enum userPrefrences : String{
    
    case aybizUserProfile = "aybizUserProfile"
}






