//
//  apiData.swift
//  Crypto
//
//  Created by SIFT - Telkom DBT Air 8 on 06/06/22.
//

import Foundation
import Combine


class apiData{
    
    @Published var All:[Coin] = []
    
    var coinSubs : AnyCancellable?
    
    init(){
        getData()
    }
    
    private func getData(){
        
        guard let url = URL(string: "https://api.coingecko.com/api/v3/coins/markets?vs_currency=IDR&order=market_cap_desc&per_page=100&page=1&sparkline=true&price_change_percentage=1h")
        else {return}
     
        coinSubs =  Network.download(url: url)
            .decode(type: [Coin].self, decoder: JSONDecoder())
            .sink(receiveCompletion:Network.handler, receiveValue: { [weak self] (returnedCoins) in
                self?.All = returnedCoins
                self?.coinSubs?.cancel()
            })
      }
}
