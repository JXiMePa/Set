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
    private var MATCH = 3
    private(set) var cardsOnDisplay = [PlayingCard]()
    private(set) var selectedCard = [PlayingCard]()
    
    init() { // MARK: Drow 12 Card on cardsOnDisplay
        for _ in 1...12 {
            if let card = deck.drow() {
                cardsOnDisplay.append(card)
            }
        }
    }
    
    func selectCardAt(index: Int) { //MARK: Create selectedCard
        print("selectCardAt(index: \(index))")
        print(cardsOnDisplay[index])
        if selectedCard.count < 3 { // <3!
            selectedCard.append(cardsOnDisplay[index])
        print("selectedCard.count \(selectedCard.count)")
        }
        if selectedCard.count == 3 {
        print("selectedCard.count == 3")
            MathingCard()
        }
    }
    
    
    func MathingCard() { //MARK: MathingCard
        print("MathingCard()")
        // if .color ==
        if  (selectedCard[0].color == selectedCard[1].color) &&
            (selectedCard[1].color == selectedCard[2].color) {
            MATCH -= 1 }
        if    //.color !=
            (selectedCard[0].color != selectedCard[1].color) &&
            (selectedCard[1].color != selectedCard[2].color) {
            MATCH -= 1 }
        
        if  // if .number ==
            (selectedCard[0].number == selectedCard[1].number) &&
            (selectedCard[1].number == selectedCard[2].number) {
            MATCH -= 1 }
        if  //.number !=
            (selectedCard[0].number != selectedCard[1].number) &&
            (selectedCard[1].number != selectedCard[2].number) {
            MATCH -= 1 }
        if  // if .symbol ==
            (selectedCard[0].symbol == selectedCard[1].symbol) &&
            (selectedCard[1].symbol  == selectedCard[2].symbol) {
            MATCH -= 1 }
        if  //.symbol !=
            (selectedCard[0].symbol != selectedCard[1].symbol) &&
            (selectedCard[1].symbol != selectedCard[2].symbol) {
            MATCH -= 1 }
        if  // if .fill ==
            (selectedCard[0].fill == selectedCard[1].fill) &&
            (selectedCard[1].fill  == selectedCard[2].fill) {
            MATCH -= 1 }
        if  //.fill !=
            (selectedCard[0].fill != selectedCard[1].fill) &&
            (selectedCard[1].fill != selectedCard[2].fill) {
            MATCH -= 1 }
        
        print("MATCH = \(MATCH)")
        removeIfCardsMATCH()
    }
    
    func removeIfCardsMATCH() {
         print("MATCH = \(MATCH) == 0? removeIfCardsMATCH()")
        //MARK: TRY REMAKE !!=((((
        if MATCH == 0 { //MARK: remove selectedCard
            var i = 0
            for card in cardsOnDisplay {
                i += 1
                for select in selectedCard {
                    if select.indentifer == card.indentifer {
                        cardsOnDisplay.remove(at: i)
                        i = 0
                    }
                }
            }
            drowThreeCards()
        }
         selectedCard.removeAll()
         MATCH = 3
    }
    
    func drowThreeCards() {
        print("drowThreeCards()")
        if cardsOnDisplay.count <= 21 {
            for _ in 1...3 {
                if let card = deck.drow() {
                    cardsOnDisplay.append(card)
                }
            }
        }
    }
}

