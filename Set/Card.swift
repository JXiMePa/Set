//
//  Card.swift
//  Set
//
//  Created by Tarasenco Jurik on 09.04.2018.
//  Copyright © 2018 Tarasenco Jurik. All rights reserved.
//

import Foundation
import UIKit

struct PlayingCard {
    
    var colorCard: ColorCard
    var form: FormCard
    var number: Number
    var fill: State
    var isMatched = false
    
    enum Number: Int {
        case one = 1
        case two
        case three
        static let all = [Number.one, .two, .three]
    }
    
    enum ColorCard: String {
        case redColor = "#colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)"
        case greenColor = "#colorLiteral(red: 0, green: 1, blue: 0, alpha: 1)"
        case blueColor = "#colorLiteral(red: 0, green: 0, blue: 1, alpha: 1)"
        static let all = [ColorCard.redColor, .blueColor, .greenColor]
    }
    
    enum FormCard {
        case romb
        case circle
        case square
        
static let all = [FormCard.romb, .circle, .square]
    }
    
    enum State: CGFloat {
        case full = 1
        case half = 0.5
        case not = 0

       static var all = [State.full, .half, .not]
    } 
}
