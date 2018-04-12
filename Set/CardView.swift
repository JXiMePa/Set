//
//  Card.swift
//  Set
//
//  Created by Tarasenco Jurik on 09.04.2018.
//  Copyright © 2018 Tarasenco Jurik. All rights reserved.
//

import UIKit

@IBDesignable
class CardView: UIView { //MARC: Add gesture, 3 SymbolCard,
    
    lazy var colorCard = UIColor(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: fill)
    var form = "romb"
    var number = 1
    var fill:CGFloat = 0.5
    

    override func draw(_ rect: CGRect) {
        let roundRect = UIBezierPath(roundedRect: bounds, cornerRadius: CardView.Property.cornerRadius)
        let rectColor = #colorLiteral(red: 0.8601284898, green: 0.8601284898, blue: 0.8601284898, alpha: 1)
        rectColor.setFill()
        roundRect.fill()
        roundRect.addClip()

        rombDrow()
            }
   
    func rombDrow() {
        
        let centr = CGPoint(
            x: self.bounds.width / 2,
            y: self.bounds.height / 2)
    
        let romb = UIBezierPath()
        romb.move(to: centr.offsetBy(dx: -(self.bounds.width / 3), by: 0.0))
        romb.addLine(to: centr.offsetBy(dx: 0, by: -(self.bounds.height / 2)))
        romb.addLine(to: centr.offsetBy(dx: self.bounds.width / 3, by: 0.0))
        romb.addLine(to: centr.offsetBy(dx: 0.0, by: self.bounds.height / 2))
        romb.close()
        
        colorCard.setFill()
        colorCard.setStroke()
        romb.lineWidth = 3
        romb.stroke()
        romb.fill()
    }
    
    
   private struct Property {
    static let cornerRadius: CGFloat = 10
    }
}
extension CGPoint {
    func offsetBy(dx: CGFloat, by: CGFloat) -> CGPoint {
        return CGPoint(x: x + dx, y: y + by)
  }
}
