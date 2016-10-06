//
//  Card.swift
//  EnumsFun
//
//  Created by Michael Dippery on 8/2/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import Foundation

enum Suit: String {
    case Spades = "♠️", Diamonds = "♦️", Hearts = "♥️", Clubs = "♣️"
    
    static func allSuits() -> [String] {
        
        return [Spades.rawValue, Diamonds.rawValue, Hearts.rawValue, Clubs.rawValue]
        
    }
    
}

enum Rank: Int {
    case two = 2, three, four, five, six, seven, eight, nine, ten, J, Q, K, A
    
    var stringValue: String {
        
        switch self {
        case .two:
            return "2"
        case .three:
            return "3"
        case .four:
            return "4"
        case .five:
            return "5"
        case .six:
            return "6"
        case .seven:
            return "7"
        case .eight:
            return "8"
        case .nine:
            return "9"
        case .ten:
            return "10"
        case .J:
            return "10"
        case .Q:
            return "10"
        case .K:
            return "10"
        case .A:
            return "1"
        }
    }
    
    
   }

class Card {
    
    let suit: Suit
    let rank: Rank
    var description: String {
        if rank.rawValue <= 10 {
            return "\(rank.rawValue)\(suit.rawValue)"
        }
        return "\(rank)\(suit.rawValue)"
        
    }
    
    init(rank: Rank, suit: Suit) {
        
        self.suit = suit
        self.rank = rank
    }
    
}
