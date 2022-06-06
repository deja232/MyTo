//
//  MenuMarket.swift
//  Crypto
//
//  Created by SIFT - Telkom DBT Air 8 on 06/06/22.
//

import SwiftUI

struct Home: View {
    
    let coin: Coin
    let showww: Bool
    
    var body: some View {
        Hvieww
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home(coin: ad.coin, showww: true )
    }
}
extension Home{
    private var Hvieww: some View{
        VStack {
            HStack {
                VStack {
                    Text(coin.name)
                        .padding()
                    Text(coin.symbol.uppercased())
                        .offset(x:-11, y: -12)
                        .font(.subheadline)
                }
                
                Spacer()
                
                ImageCoin(coin: coin)
                    .frame(width: 40, height: 40)
                    .padding()
            }
            HStack {
                Text(coin.currentPrice.pricee())
                    .font(.system(size: 17))
                    .offset(x:-10)
                Text(coin.priceChangePercentage24H?.percent() ?? "")
                    .padding(.trailing, 12)
                    .foregroundColor(
                        (coin.priceChangePercentage24H ?? 0) >= 0 ?
                        Color.green :
                            Color.red
                    )
            }
            .padding()
        }
        .background()
        .cornerRadius(13)
        .shadow(radius: 5)
        .padding()
        .frame(width: 200, height: 150)
    }
}
