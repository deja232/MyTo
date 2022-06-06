//
//  ContentView.swift
//  Crypto
//
//  Created by SIFT - Telkom DBT Air 8 on 24/05/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var mm: MarketModel
    var body: some View {
        NavigationView{
        VStack{
            TabView() {
                HomeView()
                       .tabItem {
                           Image(systemName: "house.fill")
                           Text("Home")
                   }
//                MarketView(coin: ad.coin)
//                       .tabItem {
//                           Image(systemName: "chart.bar.fill")
//                           Text("Market")
//                   }
//                WishlistView()
//                       .tabItem {
//                           Image(systemName: "heart.fill")
//                           Text("Wishlist")
//                   }
            }
            }
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        ContentView()
        }
        .environmentObject(ad.marketm)
    }
}
}
