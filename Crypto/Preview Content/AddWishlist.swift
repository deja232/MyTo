//
//  AddWishlist.swift
//  Crypto
//
//  Created by SIFT - Telkom DBT Air 8 on 06/06/22.
//

import SwiftUI

struct AddWishlist: View {
    
    @State private var selected: Coin? = nil
    
    let coin: Coin
    
    @State var amount: String = ""
    
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    Text("Add to Wishlist")
                    Spacer()
                }
                .font(.title.bold())
                .padding([.leading, .top])
                if selected != nil{
                    Text(selected?.image ?? "")
                }
                    ImageCoin(coin: coin)
                    .frame(width: 120, height: 120)
                    VStack{
                        Text(coin.name)
                        .foregroundColor(.secondary)
                        .font(.system(size: 23))
                        TextField("Amount", text: $amount)
                        .frame(width: UIScreen.main.bounds.width/1.8, height: 50)
                        .multilineTextAlignment(.center)
                        .background()
                        .cornerRadius(13)
                        .shadow(radius: 5)
                        .padding()
                        .keyboardType(.decimalPad)
                    }
                NavigationLink(destination: WishlistView(coin: coin, show: true)){
                        HStack{
                            Text("Add").fontWeight(.semibold)
                                .frame(maxWidth: .infinity, alignment: .center)
                            Spacer()
                        }
                }
                    .padding()
                    .background(.blue)
                    .cornerRadius(20)
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width/1.3, height: 50)
                    Spacer()
            }
        }
    }

}

struct AddWishlist_Previews: PreviewProvider {
    static var previews: some View {
        AddWishlist(coin: ad.coin)
    }
}


