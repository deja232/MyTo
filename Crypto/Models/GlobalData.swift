//
//  GlobalData.swift
//  Crypto
//
//  Created by SIFT - Telkom DBT Air 8 on 06/06/22.
//

import Foundation

/*
 Url: https://api.coingecko.com/api/v3/global
 
 JSON:
 */
struct MarketData: Codable {
    let data: GlobalData?
}

struct GlobalData: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    
    enum CodingKeys: String, CodingKey{
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marcap : String{
        if let mark = totalMarketCap.first(where: {$0.key == "usd"}){
            return "\(mark.value)"
        }
        return ""
    }
    
    var volume: String {
        if let mark = totalVolume.first(where: {$0.key == "usd"}){
            return "\(mark.value)"
        }
        return ""
}
}
