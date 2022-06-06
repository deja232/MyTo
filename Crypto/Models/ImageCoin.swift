//
//  ImageCoin.swift
//  Crypto
//
//  Created by SIFT - Telkom DBT Air 8 on 06/06/22.
//

import SwiftUI

struct ImageCoin: View {
    
    @StateObject var mm: ImageCoinModel
    
    init(coin: Coin){
        _mm = StateObject(wrappedValue: ImageCoinModel(coin: coin))
    }
    
    var body: some View {
        ZStack{
            if let image = mm.image{
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
            }else if mm.isLoading{
                ProgressView()
            }else {
                Image(systemName: "questionmark")
                    .foregroundColor(.gray)
            }
        }
    }
}

struct ImageCoin_Previews: PreviewProvider {
    static var previews: some View {
        ImageCoin(coin: ad.coin)
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
