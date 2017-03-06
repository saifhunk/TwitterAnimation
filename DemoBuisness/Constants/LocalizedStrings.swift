// Generated using SwiftGen, by O.Halligon — https://github.com/AliSoftware/SwiftGen

import Foundation

// swiftlint:disable file_length
// swiftlint:disable type_body_length
enum L10n {
    /// LOGIN
    case LOGIN
    /// SIGNUP
    case SIGNUP
    /// Login
    case Login
    /// Welcome!
    case Welcome
    
    case PleaseLoginToContinue
    
    
    
}
// swiftlint:enable type_body_length

extension L10n: CustomStringConvertible {
    var description: String { return self.string }
    
    var string: String {
        switch self {
        case .LOGIN:
            return L10n.LOGIN.string
        case .SIGNUP:
            return L10n.LOGIN.string
        case .Login:
            return L10n.LOGIN.string
        case .Welcome:
            return L10n.LOGIN.string
            
        case .PleaseLoginToContinue :
            
            return "Please login to continue"
            
        }
    }
    
    private static func tr(key: String, _ args: CVarArg...) -> String {
        let format = NSLocalizedString(key, comment: "")
        return String(format: format, locale: NSLocale.current, arguments: args)
    }
}

func tr(key: L10n) -> String {
    return key.string
}


