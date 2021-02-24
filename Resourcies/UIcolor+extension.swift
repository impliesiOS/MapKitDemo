//
//  UIcolor+extension.swift
//  Physician
//
//  Created by mk on 02/01/20.
//  Copyright © 2020 mk. All rights reserved.
//

import Foundation
import UIKit

extension UIColor{
    
    
    static var orangecolor: UIColor{
        return UIColor.init(red: 255.0/255.0, green: 149.0/255.0, blue: 0.0/255.0, alpha: 1.0)
    }
    static var bottomorange: UIColor{
        return UIColor.init(red: 255.0/255.0, green: 94.0/255.0, blue: 58.0/255.0, alpha: 1.0)
    }
    static var GradientFirstColor: UIColor {
        return UIColor.init(red: 75/255.0, green: 129/255.0, blue: 203/255.0, alpha: 0.8)
    }
    static var GradientsecondColor: UIColor {
        return UIColor.init(red: 77/255.0, green: 129/255.0, blue: 187/255.0, alpha: 1)
    }
    static var GradientThirdColor: UIColor {
        return UIColor.init(red: 104/255.0, green: 154/255.0, blue: 178/255.0, alpha: 1)
    }
    static var GradientforthColor: UIColor {
        return UIColor.init(red: 144/255.0, green: 193/255.0, blue: 165/255.0, alpha: 1)
    }
    static var txtplaceHolderColor: UIColor {
        return UIColor.init(red: 35/255.0, green: 72/255.0, blue: 78/255.0, alpha: 0.73)
    }
    static var txtBorderColor: UIColor {
        return UIColor.init(red: 35/255.0, green: 72/255.0, blue: 78/255.0, alpha: 0.49)
    }
    static var buttonColor: UIColor {
        return UIColor.init(red: 0/255.0, green: 144/255.0, blue: 242/255.0, alpha: 1)
    }
    static var LightGrayLineColor: UIColor {
        return UIColor.init(red: 222/255.0, green: 222/255.0, blue: 222/255.0, alpha: 1)
    }
    static var txtbgColor: UIColor {
        return UIColor.init(red: 246/255.0, green: 246/255.0, blue: 246/255.0, alpha: 1)
    }
    static var UnselectedSlotColor: UIColor {
        return UIColor.init(red: 183/255.0, green: 227/255.0, blue: 253/255.0, alpha: 1)
    }
    static var SelectedSlotColor: UIColor {
        return UIColor.init(red: 0/255.0, green: 142/255.0, blue: 230/255.0, alpha: 1)
    }
    static var SelectedCloseSlotColor: UIColor {
        return UIColor.init(red: 255/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1)
    }
//    static var SelectedDayColor: UIColor {
//        return UIColor.init(red: 110/255.0, green: 201/255.0, blue: 220/255.0, alpha: 1)
//    }
    static var UnSelectedDayColor: UIColor {
        return UIColor.init(red: 239/255.0, green: 239/255.0, blue: 239/255.0, alpha: 1)
    }
}


//light and dark mode constant
enum AssetsColor : String {
  case BackgroundColor
    case ButtonBGColor
    case ContinueBtnColor
    case HeaderTextColor
      case PlaceHolderColor
      case PlaceHolderColor2
        case StepBtnColor
      case TextColor2
      case TxtBgColor
        case txtBGColor2
      case TxtLightGrayColor
      case WelcomeBgColor
    case StepBtnUnSelectedColor
    case stepTextColor
    case UnselectedBtnColor
    case SelectedSlotColor
    case UnSelectedSlotTextColor
    case DeclinedColor
    case CongratulationColor
    case PendingColor
    case needColor
    case UpcomingBGColor
    case JoinSessionBGColor
    case TextBlueColor
    case NotificationTextColor
    case meBubbleColor
    case SomeoneBubbleColor
    case TransactionTextColor
    case TxtGray2Color
    
}
extension UIColor {
  static func appColor(_ name: AssetsColor) -> UIColor? {
     return UIColor(named: name.rawValue)
  }
}
