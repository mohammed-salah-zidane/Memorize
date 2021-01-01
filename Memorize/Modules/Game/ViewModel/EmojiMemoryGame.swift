//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by prog_zidane on 1/1/21.
//

import Foundation

class EmojiMemoryGame: ObservableObject {
    
    @Published private var model: MemoryGame<String> = MemoryGame<String>.createMemoryGame()
        
    //MARK:- Access to the model
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    //MARK:- Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
