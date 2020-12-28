//
//  MemorizeApp.swift
//  Memorize
//
//  Created by FANG LIN HE on 2020/12/24.
//

import SwiftUI

@main
struct MemorizeApp: App {
    var body: some Scene {
        WindowGroup {
            let game = EmojiMemoryGame()
            ContentView(viewModel: game)
        }
    }
}
