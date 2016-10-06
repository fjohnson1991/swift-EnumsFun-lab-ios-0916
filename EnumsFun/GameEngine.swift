//
//  GameEngine.swift
//  EnumsFun
//
//  Created by Michael Dippery on 8/2/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import Foundation

class GameEngine {
    
    let player1 : Player
    let player2: Player
    let deck : Deck
    
    init(player1: String, player2: String) {
        
        self.deck = Deck()
        let (cards1, cards2) = self.deck.split()
        let hand1 = Hand(cards: cards1)
        let hand2 = Hand(cards: cards2)
        self.player1 = Player(name: "Player1", hand: hand1)
        self.player2 = Player(name: "Player2", hand: hand2)
        
        
    }
    
    func playOneTurn() -> (Player, Card?, Card?) {
    
        var playerToReturn: Player = player1 
        if player1.hasCards() && !player2.hasCards() {
            playerToReturn = player1
        }
        
        if !player1.hasCards() && player2.hasCards() {
            playerToReturn = player2
        }
        
        guard let player1CardFlip = player1.flip() else {print("nothing"); return (playerToReturn, nil,nil)}
        guard let player2CardFlip = player2.flip() else {print("nothing"); return (playerToReturn, nil, nil)}

        if player1CardFlip.rank.rawValue > player2CardFlip.rank.rawValue {
            playerToReturn = player1
        } else {
            playerToReturn = player2
        }
        

        return (playerToReturn, player1CardFlip, player2CardFlip)
        
        
    }
    
    func award(cards: [Card], to player: Player) -> [Card] {
       
        for card in cards {
            player.give(card: card)
        }
        return player.hand.cards
        
    }
    
    func gameOver() -> Bool {
        
        if player1.hand.size == 0 || player2.hand.size == 0 {
            return true
        }
        return false
    }
    
    
}
