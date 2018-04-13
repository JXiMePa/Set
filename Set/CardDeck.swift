//
//  CardDeck.swift
//  Set
//
//  Created by Tarasenco Jurik on 09.04.2018.
//  Copyright © 2018 Tarasenco Jurik. All rights reserved.
//

import Foundation

class CardDeck {
    
    
    private(set) var cards = [PlayingCard]()
    static var identifierFactory = 0 //MARK: problematically...

    
    init () {
        for color in PlayingCard.ColorCard.all {
            for number in PlayingCard.Number.all {
                for symbol in PlayingCard.SymbolCard.all {
                    for fill in PlayingCard.Fill.all {
                        CardDeck.identifierFactory += 1
                        cards.append(PlayingCard(color: color, symbol: symbol, number: number, fill: fill, indentifer: CardDeck.identifierFactory))
                    }
                }
            }
        }
    }
    
    func drow() -> PlayingCard? {
        if cards.count > 0 {
            return cards.remove(at: cards.count.arc4random)
        } else {
            return nil
        }
    }
//    private static func getUniqueIdentifier() -> Int {
//        identifierFactory += 1
//        return identifierFactory
//    }
    
}
extension Int {
    var arc4random: Int {
        if self > 0 {
            return Int(arc4random_uniform(UInt32(self)))
        } else if self < 0 {
            return -Int(arc4random_uniform(UInt32(abs(self))))
        } else { return 0 }
    }
}
