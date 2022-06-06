//
//  WishlistView.swift
//  Crypto
//
//  Created by SIFT - Telkom DBT Air 8 on 05/06/22.
//

import SwiftUI

struct WishlistView: View {
    
    let coin: Coin
    let show: Bool
    
    
    var body: some View {
        VStack{
            Text("My Wishlist").font(.title2).bold()
            HStack{
                Text("Coin")
                    .padding(.leading, 20)
                Spacer()
                Text("Amount")
                    .padding(.trailing, 40)
                Spacer()
            }
            thecoin
    }
}
struct WishlistView_Previews: PreviewProvider {
    static var previews: some View {
        WishlistView(coin: ad.coin, show: true )
    }
}
}
    
extension WishlistView {
    
    private var thecoin: some View{
        HStack(spacing : 0){
            Text("\(coin.rank)")
                .font(.caption)
                .foregroundColor(.gray)
                .frame(minWidth:40)
            ImageCoin(coin: coin)
                .frame(width: 40, height: 40)
            Spacer()
            if show {
                VStack(alignment:.leading){
                    Text((coin.currentHoldings ?? 0 ).percentagee()
                         + (" \(coin.symbol.uppercased())")).bold()
                    Text(coin.coinValue.priceee()).foregroundColor(.secondary)
            }
            }
            Spacer()
            Image(systemName: "star")
                .resizable().aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 30)
                .foregroundColor(.blue)
                .padding()
        }
        .frame(width: UIScreen.main.bounds.width, height: 50)
        .background()
        .cornerRadius(13)
        .shadow(radius: 5)
        .padding()
    }
    }
