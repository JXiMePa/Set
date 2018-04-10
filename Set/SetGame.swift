//
//  SetGame.swift
//  Set
//
//  Created by Tarasenco Jurik on 10.04.2018.
//  Copyright © 2018 Tarasenco Jurik. All rights reserved.
//

import Foundation

class SetGame {
    
    private var deck = CardDeck()
    private(set) var cardsOnDisplay = [PlayingCard]()
    private(set) var selectedCard = [PlayingCard]()
    
    init() {
        for _ in 1...12 {
            if let card = deck.drow() {
                cardsOnDisplay.append(card)
            }
        }
    }
    
    func selectCardAt(index: Int) {
        if selectedCard.count < 3 {
            selectedCard.append(cardsOnDisplay[index])
            
            if selectedCard.count == 3 {
                
                /// Check Set
                // now just All card SET!
                for index in selectedCard.indices {
                    selectedCard[index].isMatched = true
                }
                selectedCard.removeAll()
                ////
            }
        }
    }
    
    func drowThreeCards() {
        if cardsOnDisplay.count <= 21 {
            for _ in 1...3 {
                if let card = deck.drow() {
                    cardsOnDisplay.append(card)
                }
            }
        }
    }
    
    
    
    
    
}
