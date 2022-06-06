//
//  MarketService.swift
//  Crypto
//
//  Created by SIFT - Telkom DBT Air 8 on 06/06/22.
//

import Foundation
import Combine

class MarketService {
    
    @Published var marketData: GlobalData? = nil
    
    var marketDataSubs: AnyCancellable?
    
    init(){
        getGlobalData()
    }
    
    private func getGlobalData(){
        guard let url = URL(string: "https://api.coingecko.com/api/v3/global")
        else{
            return
        }
        marketDataSubs =  Network.download(url: url)
            .decode(type: MarketData.self, decoder: JSONDecoder())
            .sink(receiveCompletion:Network.handler, receiveValue: { [weak self] (returnedMarketData) in
                self?.marketData = returnedMarketData.data
                self?.marketDataSubs?.cancel()
            })
    }

    
}
