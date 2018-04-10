//
//  ViewController.swift
//  Set
//
//  Created by Tarasenco Jurik on 09.04.2018.
//  Copyright © 2018 Tarasenco Jurik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let deck = SetGame()
    let cardView = CardView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
           
    }

    @IBAction func puchButton(_ sender: UIButton) {
        cardView.romb = !cardView.romb
        print(cardView.romb)
        
    }
}

