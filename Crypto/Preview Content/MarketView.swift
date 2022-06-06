//
//  MarketView.swift
//  Crypto
//
//  Created by SIFT - Telkom DBT Air 8 on 05/06/22.
//

import SwiftUI

struct MarketView: View {
    
    @EnvironmentObject private var mm: MarketModel
    @State private var Seeport: Bool = false
    
    let coin: Coin
    
    var body: some View {
        NavigationView{
        VStack{
            Text("Cryptocurrency List").bold()
                .font(.system(size: 30))
            if !Seeport{
        List{
            ForEach(mm.All){ coin in
                NavigationLink{
                    Details(coin: coin)
                } label: {
                    MenuMarket(coin: coin, showw: false)
                }
                
            }
        }
        .frame(maxHeight: .infinity, alignment: .top)
        .ignoresSafeArea()
        .listStyle(PlainListStyle())
        .transition(.move(edge: .leading))
            };if Seeport{
                List{
                    ForEach(mm.port){
                        coin in MenuMarket(coin: coin, showw: false)
                    }
                }
                .listStyle(PlainListStyle())
                .transition(.move(edge: .leading))
            }
            Spacer()
    }
        .navigationBarHidden(true)
        }
    }
}

struct MarketView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            MarketView(coin: ad.coin)
        }
        .environmentObject(ad.marketm)
    }
}

