// Generated using SwiftGen, by O.Halligon — https://github.com/AliSoftware/SwiftGen

import Foundation
import UIKit

protocol StoryboardSceneType {
  static var storyboardName: String { get }
}

extension StoryboardSceneType {
  static func storyboard() -> UIStoryboard {
    return UIStoryboard(name: self.storyboardName, bundle: nil)
  }

  static func initialViewController() -> UIViewController {
    guard let vc = storyboard().instantiateInitialViewController() else {
      fatalError("Failed to instantiate initialViewController for \(self.storyboardName)")
    }
    return vc
  }
}

extension StoryboardSceneType where Self: RawRepresentable, Self.RawValue == String {
  func viewController() -> UIViewController {
    return Self.storyboard().instantiateViewController(withIdentifier: self.rawValue)
  }
  static func viewController(identifier: Self) -> UIViewController {
    return identifier.viewController()
  }
}

protocol StoryboardSegueType: RawRepresentable { }

extension UIViewController {
  func performSegue<S: StoryboardSegueType>(segue: S, sender: AnyObject? = nil) where S.RawValue == String {
    performSegue(withIdentifier: segue.rawValue, sender: sender)
  }
}

// swiftlint:disable file_length
// swiftlint:disable type_body_length

struct StoryboardScene {
  enum LaunchScreen: StoryboardSceneType {
    static let storyboardName = "LaunchScreen"

    static func initialViewController() -> UISplitViewController {
      guard let vc = storyboard().instantiateInitialViewController() as? UISplitViewController else {
        fatalError("Failed to instantiate initialViewController for \(self.storyboardName)")
      }
      return vc
    }
  }
  enum LoginSignUp: String, StoryboardSceneType {
    static let storyboardName = "LoginSignUp"

    static func initialViewController() -> UINavigationController {
      guard let vc = storyboard().instantiateInitialViewController() as? UINavigationController else {
        fatalError("Failed to instantiate initialViewController for \(self.storyboardName)")
      }
      return vc
    }

    case ForgotPaswwordViewControllerScene = "ForgotPaswwordViewController"
    static func instantiateForgotPaswwordViewController() -> ForgotPaswwordViewController {
      guard let vc = StoryboardScene.LoginSignUp.ForgotPaswwordViewControllerScene.viewController() as? ForgotPaswwordViewController
      else {
        fatalError("ViewController 'ForgotPaswwordViewController' is not of the expected class ForgotPaswwordViewController.")
      }
      return vc
    }

    
    case SetupProfileViewControllerScene = "SetupProfileViewController"
    static func instantiateSetupProfileViewController() -> SetupProfileViewController {
        guard let vc = StoryboardScene.LoginSignUp.SetupProfileViewControllerScene.viewController() as? SetupProfileViewController
            else {
                fatalError("ViewController 'FilterViewController' is not of the expected class FilterViewController.")
        }
        return vc
    }
    
   
  }
  enum Main: String, StoryboardSceneType {
    static let storyboardName = "Main"

    static func initialViewController() -> BaseTabBarController {
      guard let vc = storyboard().instantiateInitialViewController() as? BaseTabBarController else {
        fatalError("Failed to instantiate initialViewController for \(self.storyboardName)")
      }
      return vc
    }

   

    case BuisnessListViewControllerScene = "BuisnessListViewController"
    static func instantiateBuisnessListViewController() -> BuisnessListViewController {
      guard let vc = StoryboardScene.Main.BuisnessListViewControllerScene.viewController() as? BuisnessListViewController
      else {
        fatalError("ViewController 'BuisnessListViewController' is not of the expected class BuisnessListViewController.")
      }
      return vc
    }
    
    case FilterViewControllerScene = "FilterViewController"
    static func instantiateFilterViewController() -> FilterViewController {
        guard let vc = StoryboardScene.Main.FilterViewControllerScene.viewController() as? FilterViewController
            else {
                fatalError("ViewController 'FilterViewController' is not of the expected class FilterViewController.")
        }
        return vc
    }
    
    
    case BuisnessMapViewControllerScene = "BuisnessMapViewController"
    static func instantiateBuisnessMapViewController() -> BuisnessMapViewController {
        guard let vc = StoryboardScene.Main.BuisnessMapViewControllerScene.viewController() as? BuisnessMapViewController
            else {
                fatalError("ViewController 'BuisnessMapViewController' is not of the expected class BuisnessMapViewController.")
        }
        return vc
    }
    
    

    
    case HomeViewControllerScene = "HomeViewController"
    static func instantiateSearchViewController() -> HomeViewController {
      guard let vc = StoryboardScene.Main.HomeViewControllerScene.viewController() as? HomeViewController
      else {
        fatalError("ViewController 'SearchViewController' is not of the expected class SearchViewController.")
      }
      return vc
    }
  }
}

struct StoryboardSegue {
  enum LoginSignUp: String, StoryboardSegueType {
    case SegueSignUp2 = "SegueSignUp2"
  }
}
