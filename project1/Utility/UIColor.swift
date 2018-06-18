import UIKit

extension UIColor {
  class func rgba(_ red: Int, _ green: Int, _ blue: Int, _ alpha: CGFloat) -> UIColor{
    return UIColor(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: alpha)
  }
}
