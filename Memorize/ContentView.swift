//
//  ContentView.swift
//  Memorize
//
//  Created by FANG LIN HE on 2020/12/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ForEach(0..<6) { index in
                CardRowView(rowNumber: index)
            }
        }
        .foregroundColor(.orange)
        .padding()
        .font(Font.largeTitle)
    }
}

struct CardView: View {
    var isFaceUp: Bool
    var body: some View {
        if isFaceUp {
            ZStack {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3.0)
                Text("👻")
            }
        } else {
            RoundedRectangle(cornerRadius: 10.0)
        }
    }
}

struct CardRowView: View {
    var rowNumber: Int
    var body: some View {
        HStack {
            ForEach(0..<4) { index in
                CardView(isFaceUp: (rowNumber + index) % 2 == 0)
            }
        }
    }
}















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
