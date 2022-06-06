//
//  CoinService.swift
//  Crypto
//
//  Created by SIFT - Telkom DBT Air 8 on 06/06/22.
//

import Foundation
import SwiftUI
import Combine


class CoinService {
    
    @Published var img: UIImage? = nil
    
    private var imageSubs : AnyCancellable?
    private let coin : Coin
    
    init(coin : Coin)
    {
        self.coin = coin
       getCoinImage()
    }
    private func getCoinImage(){
        guard let url = URL(string: coin.image)
        else {return}
     
        imageSubs =  Network.download(url: url)
            .tryMap({ (data) ->  UIImage? in
                return UIImage(data: data)
            })
            .sink(receiveCompletion:Network.handler, receiveValue: { [weak self] (returnedImage) in
                self?.img = returnedImage
                self?.imageSubs?.cancel()
            })
    }
    
}
