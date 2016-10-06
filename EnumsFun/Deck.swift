//
//  Deck.swift
//  EnumsFun
//
//  Created by Michael Dippery on 8/2/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import Foundation

class Deck {
    
    var cards: [Card] = []
    
    init() {
        
        for suit in Suit.allSuits() {
            for rank in 2...14 {
                
               let rank = Rank(rawValue: rank)
                let suit = Suit(rawValue: suit)
                let card = Card(rank: rank!, suit: suit!)
                cards.append(card)
                cards.shuffle()
                
            }
        }
    }
    
    
    func split() -> ([Card], [Card]) {
        
        return cards.split()
        
    }
}
