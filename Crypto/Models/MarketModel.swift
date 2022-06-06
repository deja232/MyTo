//
//  MarketModel.swift
//  Crypto
//
//  Created by SIFT - Telkom DBT Air 8 on 06/06/22.
//

import Foundation
import Combine

class MarketModel : ObservableObject{
    
    @Published var All: [Coin] = []
    @Published var port: [Coin] = []
    
    private let serv = apiData()
    private var cancellables = Set<AnyCancellable>()
    
    init(){
    Subs()
        }
    
    func Subs() {
        serv.$All
            .sink {[weak self] (returnedCoins) in self?.All = returnedCoins
            }
            .store(in: &cancellables)
    }
    
}
