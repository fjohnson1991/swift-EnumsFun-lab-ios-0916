//
//  Hand.swift
//  EnumsFun
//
//  Created by Michael Dippery on 8/2/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import Foundation

class Hand {
    
    var cards: [Card]
    var size: Int {
        
        return cards.count
    }
    
    init(cards: [Card]) {
        
        self.cards = cards
    }
    
    func flip() -> Card? {
        
        var topCard: Card?
    
        if !cards.isEmpty {
            
            topCard = cards.first!
            cards.removeFirst()
            
        }
        
        return topCard
    }
    
    func cardValue() -> Int {
        var cardValue: Int = 0
        
        if let firstCard = cards.first {
    
            let rankOfCard = firstCard.rank
            
            let valueOfCard = rankOfCard.rawValue
            
            cardValue += valueOfCard
            
            
        }
        
        return cardValue
    }
    
    func give(card: Card) {
        
        cards.insert(card, at: cards.endIndex)
    }
    
    
    func lose(card: Card) {
        
        cards.remove(at: 0)
        
    }
    
}
