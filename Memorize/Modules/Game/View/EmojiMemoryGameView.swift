//
//  ContentView.swift
//  Memorize
//
//  Created by prog_zidane on 1/1/21.
//

import SwiftUI

struct EmojiMemoryGameView: View {
    @ObservedObject var viewModel: EmojiMemoryGame
    
    var body: some View {
        
        VStack {
            ForEach(viewModel.cards) { card in
                CardView(card: card)
                    .onTapGesture {
                        self.viewModel.choose(card: card)
                    }
            }
        }
        .padding()
        .foregroundColor(.orange)
    }
}

struct CardView: View {
    //MARK:- Drawing Constants
    let cornerRadius: CGFloat = 10
    let borderWidth: CGFloat = 3
    let fontFactorScale: CGFloat = 0.75
    
    //MARK:- Properties
    var card: MemoryGame<String>.Card
    
    var body: some View {
        GeometryReader { geometry in
            self.drawBody(for: geometry.size)
        }
    }
    
    //MARK:- Drawing Methods
    func drawBody(for size: CGSize) -> some View {
        ZStack {
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: cornerRadius)
                    .fill(Color.white)
                RoundedRectangle(cornerRadius: cornerRadius)
                    .stroke(lineWidth: borderWidth)
                Text(card.content)
            }else {
                RoundedRectangle(cornerRadius: cornerRadius)
                    .fill()
            }
        }.font(.system(size: fontSize(for: size)))
    }
    
    func fontSize(for size: CGSize) -> CGFloat {
        min(size.width, size.height * fontFactorScale)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiMemoryGameView(viewModel: EmojiMemoryGame())
    }
}
