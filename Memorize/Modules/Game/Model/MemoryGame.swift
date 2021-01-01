//
//  MemoryGame.swift
//  Memorize
//
//  Created by prog_zidane on 1/1/21.
//

import Foundation


struct MemoryGame<T> {
    var cards: Array<Card>
    
    init(numberOfPairsOfCars: Int, cardContentFactory: (Int) -> T) {
        cards = Array<Card>()
        
        for pairIndex in 0..<numberOfPairsOfCars {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(id: pairIndex*2, content: content))
            cards.append(Card(id: pairIndex*2+1, content: content))
        }
    }

    func choose(card: Card) {
        print("choosed card is \(card)")
    }
    
    struct Card: Identifiable {
        var id: Int
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content: T
    }
}

extension MemoryGame {
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis : Array<String> = ["👻","😹","🕷"]
        return MemoryGame<String>(numberOfPairsOfCars: emojis.count) { index in
            emojis[index]
        }
    }
}
