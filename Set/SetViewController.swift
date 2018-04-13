//
//  ViewController.swift
//  Set
//
//  Created by Tarasenco Jurik on 09.04.2018.
//  Copyright © 2018 Tarasenco Jurik. All rights reserved.
//

import UIKit

class SetViewController: UIViewController {
    
    private var deck = SetGame()
    
    @IBAction func newGameButton(_ sender: UIButton) {
            deck = SetGame()
            updateViewFromModel()
    }
    
    @IBAction func setThreCard(_ sender: UIButton) {
        if deck.drowThreeCards() {
            updateViewFromModel()
        }
    }
    
    @IBOutlet var cardButtons: [UIButton]!
    
    private func updateViewFromModel() {
        
        if cardButtons != nil {

            for index in deck.cardsOnDisplay.indices {
                let card = deck.cardsOnDisplay[index]

                cardButtons[index].backgroundColor = setButtonColor(card: card)
                cardButtons[index].setTitle(setButtonSymbol(card: card), for: .normal)
                cardButtons[index].layer.cornerRadius = 8.0
                cardButtons[index].layer.borderWidth = 3.0
                cardButtons[index].isEnabled = true
                
                if deck.selectedCard.contains(card) {
                    cardButtons[index].layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
                    cardButtons[index].isEnabled = false
                } else {
                    cardButtons[index].layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
                }
              }
            
            for index in deck.cardsOnDisplay.count..<cardButtons.count {
                cardButtons[index].backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)
                cardButtons[index].setTitle(nil, for: .normal)
                cardButtons[index].isEnabled = false
                cardButtons[index].layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 0)
            } // isHiden
        }// cardButtons != nil
    }//updateViewFromModel()
    
    private func setButtonColor(card: PlayingCard) -> UIColor {
        
        if card.color.rawValue == "red" {
            if card.fill.rawValue == "full" { return #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1) }
            else if card.fill.rawValue == "half" { return #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1).withAlphaComponent(0.3) }
            else if card.fill.rawValue == "not" { return #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1) }
            
        } else if card.color.rawValue == "green" {
            if card.fill.rawValue == "full" { return #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)  }
            else if card.fill.rawValue == "half" { return #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1).withAlphaComponent(0.3)  }
            else if card.fill.rawValue == "not" { return #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1) }
            
        } else if card.color.rawValue == "blue" {
            if card.fill.rawValue == "full" { return #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1) }
            else if card.fill.rawValue == "half" { return #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1).withAlphaComponent(0.3)  }
            else if card.fill.rawValue == "not" { return #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1) }
        } else { return #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0) }
        return #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0)
    }
    
    private func setButtonSymbol(card: PlayingCard) -> String { //MARK: Fix Add UIbeziePatch?
        
        if card.symbol.rawValue == "romb" {
            if card.number.rawValue == 1 { return "◆" }
            else if card.number.rawValue == 2 { return "◆  ◆" }
            else if card.number.rawValue == 3 { return "◆  ◆  ◆" }
            
        } else if card.symbol.rawValue == "circle" {
            if card.number.rawValue == 1 { return "◉" }
            else if card.number.rawValue == 2 { return "◉  ◉" }
            else if card.number.rawValue == 3 { return "◉  ◉  ◉" }
            
        } else if card.symbol.rawValue == "square" {
            if card.number.rawValue == 1 { return "◼︎" }
            else if card.number.rawValue == 2 { return "◼︎  ◼︎" }
            else if card.number.rawValue == 3 { return "◼︎  ◼︎  ◼︎" }
        } else { return "?"}
        return ""
    }
    
    @IBAction func choseButton(_ sender: UIButton) {
        
        if deck.selectedCard.count <= 3 {
            print("selectedCard.count \(deck.selectedCard.count)")
            sender.layer.borderWidth = 3.0
            sender.layer.borderColor = UIColor.blue.cgColor
            sender.layer.cornerRadius = 8.0
            if let numberButton = cardButtons.index(of: sender) {
                print("cardNumber = \(numberButton)")
                deck.selectCardAt(index: numberButton)
                updateViewFromModel()
            }
        }
        
        if deck.selectedCard.count == 3 {
            updateViewFromModel()
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViewFromModel()
        print(cardButtons.count)
    }
}

