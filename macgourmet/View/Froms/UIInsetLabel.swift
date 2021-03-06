//Created for macgourmet  (19.06.2020 )

import UIKit


class UIInsetLabel: UILabel {
    var topInset: CGFloat = 2.0
    var bottomInset: CGFloat = 2.0
    var leftInset: CGFloat = 4.0
    var rightInset: CGFloat = 4.0

    override func drawText(in rect: CGRect)
    {
        let insets: UIEdgeInsets = UIEdgeInsets(top: topInset, left: leftInset, bottom: bottomInset, right: rightInset)
        super.drawText(in: rect.inset(by: insets))
    }

    override public var intrinsicContentSize: CGSize
    {
        var contentSize = super.intrinsicContentSize
        contentSize.height += topInset + bottomInset
        contentSize.width += leftInset + rightInset
        return contentSize
    }

    func setPadding(top: CGFloat, left: CGFloat, bottom: CGFloat, right: CGFloat){
        self.topInset = top
        self.bottomInset = bottom
        self.leftInset = left
        self.rightInset = right
        let insets: UIEdgeInsets = UIEdgeInsets(top: top, left: left, bottom: bottom, right: right)
        super.drawText(in: self.frame.inset(by: insets))
    }
}



 

//extension UIView {
//    @discardableResult
//    func applyGradient(colours: [UIColor]) -> CAGradientLayer {
//        return self.applyGradient(colours: colours, locations: nil)
//    }
//
//    @discardableResult
//    func applyGradient(colours: [UIColor], locations: [NSNumber]?) -> CAGradientLayer {
//        let gradient: CAGradientLayer = CAGradientLayer()
//        gradient.frame = self.bounds
//        gradient.colors = colours.map { $0.cgColor }
//        gradient.locations = locations
//        self.layer.insertSublayer(gradient, at: 0)
//        return gradient
//    }
//} 
