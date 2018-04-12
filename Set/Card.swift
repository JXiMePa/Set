//
//  Card.swift
//  Set
//
//  Created by Tarasenco Jurik on 09.04.2018.
//  Copyright © 2018 Tarasenco Jurik. All rights reserved.
//

import Foundation
import UIKit

struct PlayingCard: CustomStringConvertible {
    
    var description: String { return "- \(number), \(symbol), \(color), \(fill), \(indentifer) \n" }
    
    
    var color: ColorCard
    var symbol: SymbolCard
    var number: Number
    var fill: Fill
    var indentifer = 0


    enum Number: Int, CustomStringConvertible {
        var description: String {return String(rawValue)}
        
        case one = 1
        case two
        case three
        static let all = [Number.one, .two, .three]
    }

    enum ColorCard: String, CustomStringConvertible {
        
        var description: String { //MARK: Fix later
            switch  self {
            case .blueColor: return "blue"
            case .greenColor: return "green"
            case .redColor: return "red"
            }
        }
        case redColor = "red"
        case greenColor = "green"
        case blueColor = "blue"
        static let all = [ColorCard.redColor, .blueColor, .greenColor]
    }

    enum SymbolCard: String, CustomStringConvertible {
        var description: String {return rawValue}
        case romb
        case circle
        case square
        
        static let all = [SymbolCard.romb, .circle, .square]
    }

    enum Fill: String, CustomStringConvertible {
        var description: String {return rawValue}
        case full
        case half
        case not 
        
        static var all = [Fill.full, .half, .not]
    }
    
   
    
//    init(color: ColorCard, symbol: SymbolCard, number: Number, fill: Fill, indentifer: Int) {
//        self.color = color
//        self.symbol = symbol
//        self.number = number
//        self.fill = fill
//        self.indentifer = PlayingCard.getUniqueIdentifier()
//    }
}
