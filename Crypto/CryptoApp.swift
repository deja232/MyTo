//
//  CryptoApp.swift
//  Crypto
//
//  Created by SIFT - Telkom DBT Air 8 on 24/05/22.
//

import SwiftUI

@main
struct CryptoApp: App {
    
    @StateObject private var mm = MarketModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ContentView()
            }
            .environmentObject(mm)
            }
    }
}
