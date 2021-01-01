//
//  MemorizeApp.swift
//  Memorize
//
//  Created by prog_zidane on 1/1/21.
//

import SwiftUI

@main
struct MemorizeApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    @Environment(\.scenePhase) var scenePhase
    
    init() {
        setupApp()
    }
    
    var body: some Scene {
        WindowGroup {
            let game = EmojiMemoryGame()
            EmojiMemoryGameView(viewModel: game)
        }
        .onChange(of: scenePhase) { phase in
            switch phase {
            case .active:
                print("Active")
            case .background:
                print("background")
            case .inactive:
                print("inactive")
            default:
                print("new state added by apple")
            }
        }
    }
}

extension MemorizeApp {
    
    func setupApp() {
        
    }
}



