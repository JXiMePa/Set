//
//  Card.swift
//  Set
//
//  Created by Tarasenco Jurik on 09.04.2018.
//  Copyright © 2018 Tarasenco Jurik. All rights reserved.
//

import UIKit

@IBDesignable
class CardView: UIView {
    
var deck = PlayingCardDeck()
    
    
    
    override func draw(_ rect: CGRect) {
       rombDrow()
    }
   
   private func rombDrow() {
        let centr = CGPoint(
            x: self.bounds.width / 2,
            y: self.bounds.height / 2)
        
    let roundRect = UIBezierPath(roundedRect: bounds, cornerRadius: CardView.Property.cornerRadius)
    let rectColor = #colorLiteral(red: 0.8601284898, green: 0.8601284898, blue: 0.8601284898, alpha: 1)
    rectColor.setFill()
    roundRect.fill()
    roundRect.addClip()
    
    
        let romb = UIBezierPath()
        romb.move(to: centr.offsetBy(dx: -(self.bounds.width / 3), by: 0.0))
        romb.addLine(to: centr.offsetBy(dx: 0, by: -(self.bounds.height / 2)))
        romb.addLine(to: centr.offsetBy(dx: self.bounds.width / 3, by: 0.0))
        romb.addLine(to: centr.offsetBy(dx: 0.0, by: self.bounds.height / 2))
        romb.close()
        let color = #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)
        let fillColor = #colorLiteral(red: 0.2644325127, green: 0.01481595335, blue: 0.8512745049, alpha: 0.4954783818)
        fillColor.setFill()
        color.setStroke()
        romb.lineWidth = 3
        romb.stroke()
        romb.fill()
    
    }
   private struct Property {
    static let cornerRadius: CGFloat = 20
    }
}
extension CGPoint {
    func offsetBy(dx: CGFloat, by: CGFloat) -> CGPoint {
        return CGPoint(x: x + dx, y: y + by)
  }
}
