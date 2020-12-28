//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by FANG LIN HE on 2020/12/27.
//

import SwiftUI

class EmojiMemoryGame {
    private var model = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["👻", "🎃", "🕷", "🕸", "🍂",
                      "😀", "🤪", "🤩", "🥳", "😫",
                      "😈", "💩", "🤟", "🙏", "💋",
                      "🗣", "🐭", "🙉", "🦇", "🦗",
                      "☎️", "💸", "🚽", "🎈", "🛒"]
        let numberOfPairsOfCards = Int.random(in: 2...5)
        let randomEmojis = emojis.shuffled()[0..<numberOfPairsOfCards]
        return MemoryGame<String>(numberOfPairsOfCards: numberOfPairsOfCards) { pairIndex in
            return randomEmojis[pairIndex]
        }
    }

    // MARK: - Access to the Model
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
