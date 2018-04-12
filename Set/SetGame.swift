//
//  SetGame.swift
//  Set
//
//  Created by Tarasenco Jurik on 10.04.2018.
//  Copyright © 2018 Tarasenco Jurik. All rights reserved.
//

import Foundation

class SetGame {
    
    private var mathingCount = 0
    private var deck = CardDeck()
    private(set) var cardsOnDisplay = [PlayingCard]()
    private(set) var selectedCard = Array<PlayingCard>()
    
    init() {
        
        for _ in 1...12 {
            if let card = deck.drow() {
                cardsOnDisplay.append(card)
            }
        }
    }
    
    func selectAndMathingCardAt(index: Int) {
        
        
        let selected = cardsOnDisplay.remove(at: index)
        selectedCard.append(selected)
        
        print(selectedCard)
        print(cardsOnDisplay)
        
        if selectedCard.count <= 3 {
            if selectedCard.count == 3 { // set 1 line use ","?
                
                // if .color ==
                if  selectedCard[0].color == selectedCard[1].color &&
                    selectedCard[1].color  == selectedCard[2].color {
                    mathingCount += 1
                    
                } else if    //.color !=
                    selectedCard[0].color != selectedCard[1].color &&
                        selectedCard[1].color != selectedCard[2].color {
                    mathingCount += 1
                    
                } else if  // if .number ==
                    selectedCard[0].number == selectedCard[1].number &&
                        selectedCard[1].number  == selectedCard[2].number {
                    mathingCount += 1
                } else if  //.number !=
                    
                    selectedCard[0].number != selectedCard[1].number &&
                        selectedCard[1].number != selectedCard[2].number {
                    mathingCount += 1
                } else if  // if .symbol ==
                    selectedCard[0].symbol == selectedCard[1].symbol &&
                        selectedCard[1].symbol  == selectedCard[2].symbol {
                    mathingCount += 1
                } else if  //.symbol !=
                    selectedCard[0].symbol != selectedCard[1].symbol &&
                        selectedCard[1].symbol != selectedCard[2].symbol {
                    mathingCount += 1
                } else if  // if .fill ==
                    selectedCard[0].fill == selectedCard[1].fill &&
                        selectedCard[1].fill  == selectedCard[2].fill {
                    mathingCount += 1
                } else if  //.fill !=
                    selectedCard[0].fill != selectedCard[1].fill &&
                        selectedCard[1].fill != selectedCard[2].fill {
                    mathingCount += 1
                }
                if mathingCount == 3 && selectedCard.count == 3 { //MARK: remove selectedCard
                    mathingCount = 0
                    selectedCard.removeAll()
                } else if selectedCard.count == 3 {
                    cardsOnDisplay += selectedCard }
                
                
            } // mathingCount == 3
        } // if select <= 3
        
        //MARK://///// Enter if mathingCount == 3 ???
        
        
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
}
