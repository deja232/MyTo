//
//  ImageCoinModel.swift
//  Crypto
//
//  Created by SIFT - Telkom DBT Air 8 on 06/06/22.
//

import Foundation
import SwiftUI
import Combine

class ImageCoinModel: ObservableObject{
    
    @Published var statis: [Stats] = []
    @Published var image: UIImage? = nil
    @Published var isLoading: Bool = false
    
    private let coin : Coin
    private let coinServ : CoinService
    private let marketglobal = MarketService()
    private var cancellables = Set<AnyCancellable>()
    
    init(coin: Coin){
        self.coin = coin
        self.coinServ = CoinService(coin: coin)
        self.addSubs()
        self.isLoading = true
        }
    private func addSubs(){
        coinServ.$img
            .sink { [weak self](_) in
                self?.isLoading = false
            } receiveValue: { [weak self](returnedImage) in
                self?.image = returnedImage
            }
            .store(in: &cancellables)

        
//        marketglobal.$marketData
//            .map{(GlobalData) ->[Stats] in
//                var sta: [Stats] = []
//
//                guard let dta = GlobalData else{
//                    return sta
//                }
//                let marketCap = Stats(value: dta.marcap)
//                let volume = Stats(value: dta.volume)
//                sta.append(contentsOf: [
//                marketCap,volume
//                ])
//                return sta
//            }
//            .sink([weak self](returnedStats)in
//                  self.statis = returnedStats)
    
}
}
