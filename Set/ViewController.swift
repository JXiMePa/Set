//
//  ViewController.swift
//  Set
//
//  Created by Tarasenco Jurik on 09.04.2018.
//  Copyright © 2018 Tarasenco Jurik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let deck = PlayingCardDeck()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for _ in 1...10 {
            if let card = deck.drow() {
                print("карта -  \(card)")
            }
        }
        
        print(deck.cards.count)
    }

}

