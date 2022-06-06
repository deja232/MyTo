//
//  WishlistView.swift
//  Crypto
//
//  Created by SIFT - Telkom DBT Air 8 on 05/06/22.
//

import SwiftUI

struct Details: View {
    
//   @StateObject private var mm: DetailModel
    let coin : Coin
    
    var body: some View {
        NavigationView{
        VStack{
        HStack{
            Text(coin.name + " Detail")
                .font(.system(size: 20))
                .fontWeight(.semibold)
                .padding()
        }
            HStack{
                ImageCoin(coin: coin)
                    .frame(width: 40, height: 40)
                Text(coin.symbol.uppercased())
                Spacer()
            }
            .padding()
            HStack{
                Text(coin.currentPrice.pricee())
                    .fontWeight(.semibold)
                    .padding(.leading)
                    .font(.title2)
                Spacer()
                Text(coin.priceChangePercentage24H?.percent() ?? "")
                    .font(.title3)
                    .padding(.trailing, 16)
                    .foregroundColor(
                        (coin.priceChangePercentage24H ?? 0) >= 0 ?
                        Color.green :
                        Color.red
                        )
            }
            ChartView(coin: coin)
            HStack{
            Text("Statistic")
                .fontWeight(.heavy)
                .font(.system(size: 25))
                .padding()
                Spacer()
            }
            HStack{
                Text("Current Price : ")
                    .padding()
                Spacer()
                Text(coin.currentPrice.pricee())
                    .padding()
            }
            HStack{
                Text("Market Cap : ")
                    .padding()
                Spacer()
                Text(coin.marketCap?.pricee() ?? "")
                    .padding()
            }
            HStack{
                Text("Volume : ")
                    .padding()
                Spacer()
                Text(coin.totalVolume?.pricee() ?? "")
                    .padding()
            }
            Spacer()
            NavigationLink(destination: AddWishlist(coin: coin)){
                Text ("Add to Wishlist")
            }
            .padding()
            .background(.blue)
            .cornerRadius(20)
            .foregroundColor(.white)
            .frame(width: .infinity, height: 50)
        }
    }
    }
struct Details_Previews: PreviewProvider {
    static var previews: some View {
        Details(coin: ad.coin )
    }
}
}
