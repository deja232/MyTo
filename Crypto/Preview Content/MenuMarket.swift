//
//  MenuMarket.swift
//  Crypto
//
//  Created by SIFT - Telkom DBT Air 8 on 06/06/22.
//

import SwiftUI

struct MenuMarket: View {
    
    let coin: Coin
    let showw: Bool
    
    var body: some View {
        crypto
    }
}

struct MenuMarket_Previews: PreviewProvider {
    static var previews: some View {
        MenuMarket(coin: ad.coin, showw: true )
    }
}
extension MenuMarket{
    private var crypto: some View{
        HStack(){
            Text("\(coin.rank)")
                .font(.caption)
                .foregroundColor(.gray)
                .frame(minWidth:40)
            ImageCoin(coin: coin)
                .frame(width: 40, height: 40)
            Text(coin.symbol.uppercased())
                .font(.headline)
                .padding(.leading,2)
            Text(coin.currentPrice.pricee())
                .bold()
            Spacer()
            VStack(alignment: .trailing){
                Text(coin.priceChangePercentage24H?.percent() ?? "")
                    .padding(.trailing, 12)
                    .foregroundColor(
                        (coin.priceChangePercentage24H ?? 0) >= 0 ?
                        Color.green :
                            Color.red
                    )
            }
        }
    }
}
