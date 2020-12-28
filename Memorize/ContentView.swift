//
//  ContentView.swift
//  Memorize
//
//  Created by FANG LIN HE on 2020/12/24.
//

import SwiftUI

struct ContentView: View {
    var viewModel: EmojiMemoryGame
    
    var body: some View {
        let fontSize = viewModel.cards.count >= 10 ? Font.title3 : Font.largeTitle
        HStack {
            ForEach(viewModel.cards) { card in
                CardView(card: card).onTapGesture {
                    viewModel.choose(card: card)
                }
            }
            .aspectRatio(2 / 3, contentMode: .fit)
        }
        .foregroundColor(.orange)
        .padding()
        .font(fontSize)
    }
}

struct CardView: View {
    var card: MemoryGame<String>.Card
    
    var body: some View {
        if card.isFaceUp {
            ZStack {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3.0)
                Text(card.content)
            }
        } else {
            RoundedRectangle(cornerRadius: 10.0)
        }
    }
}















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: EmojiMemoryGame())
            .preferredColorScheme(.dark)
    }
}
