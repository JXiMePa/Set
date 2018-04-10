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

init () {
    for form in PlayingCard.FormCard.all {
        for number in PlayingCard.Number.all {
            for color in PlayingCard.ColorCard.all {
                for state in PlayingCard.State.all {
                    cards.append(PlayingCard(colorCard: color, form: form, number: number, fill: state, isMatched: false))
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
