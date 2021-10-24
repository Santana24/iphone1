//
//  HelperExtension.swift
//  Converter_iOS_App
//


import Foundation
import UIKit

class Formatter {
  static let numberFormatter: NumberFormatter = {
    $0.minimumFractionDigits = 0
    $0.maximumFractionDigits = 1
    return $0
  }(NumberFormatter())

  class func string(from double: Double) -> String {
    let nsNumber = NSNumber(value: double)
    guard let formattedString = numberFormatter.string(from: nsNumber) else { fatalError("Should never happen")  }
    return formattedString
  }
}

extension UIViewController{
     func displayAlert(alertMessage: String)
    {
        let alert = UIAlertController(title: "Alert", message: alertMessage, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(okAction)
        self.present(alert, animated: true)
    }
    
}


extension UIView {
   func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
}



extension UIViewController {
    func showAlert(_ title: String, message: String, handler: ((UIAlertAction) -> Void)?) {
        let ac = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "Ok", style: .default, handler: handler)
        //ok.setValue(UIColor.myAppOrange, forKey: "titleTextColor")
        ac.addAction(ok)
        present(ac, animated: true, completion: nil)
    }
}
