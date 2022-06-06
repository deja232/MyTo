//
//  CoinModel.swift
//  Crypto
//
//  Created by SIFT - Telkom DBT Air 8 on 06/06/22.
//

import Foundation

/*
//https://api.coingecko.com/api/v3/coins/markets?vs_currency=IDR&order=market_cap_desc&per_page=100&page=1&sparkline=true&price_change_percentage=1h

    //JSON : {
"id": "bitcoin",
"symbol": "btc",
"name": "Bitcoin",
"image": "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579",
"current_price": 432341545,
"market_cap": 8222042676397992,
"market_cap_rank": 1,
"fully_diluted_valuation": 9059314914278358,
"total_volume": 190516948652317,
"high_24h": 434941103,
"low_24h": 427371952,
"price_change_24h": 2049272,
"price_change_percentage_24h": 0.47625,
"market_cap_change_24h": 29357649616152,
"market_cap_change_percentage_24h": 0.35834,
"circulating_supply": 19059156,
"total_supply": 21000000,
"max_supply": 21000000,
"ath": 984115318,
"ath_change_percentage": -56.16409,
"ath_date": "2021-11-10T14:24:11.849Z",
"atl": 658780,
"atl_change_percentage": 65384.07115,
"atl_date": "2013-07-05T00:00:00.000Z",
"roi": null,
"last_updated": "2022-06-05T21:49:13.020Z",
"sparkline_in_7d": {
  "price": [
    29284.618648878626,
    29218.596404076914,
    29148.243526932234,
    29182.572516074466,
    29263.618966611924,
    29475.671234358913,
    29492.503214953642,
    29360.436790571424,
    29690.567324848435,
    30223.04264752144,
    30358.108854119004,
    30340.02971964249,
    30434.618489637003,
    30708.176190472528,
    30662.71909350132,
    30756.010678597333,
    30722.672335208183,
    30620.778320640078,
    30689.364407804085,
    30543.557711575824,
    30491.839921722476,
    30469.446528119446,
    30641.644157734732,
    30627.26728114365,
    30727.151701036102,
    30711.22782546968,
    30675.071154599187,
    31233.103946988624,
    31735.16076449612,
    31720.965572194695,
    31740.94072516695,
    31590.69578982399,
    31565.29066595667,
    31676.601747883113,
    31727.847774432157,
    31719.477119965384,
    31702.43900981711,
    31511.547050167363,
    31585.668444076753,
    31663.527762322694,
    31545.550469514776,
    31650.838373027826,
    31785.404870081464,
    31576.510505366634,
    31484.74810010492,
    31680.985963941817,
    32009.049390699616,
    32206.261553889617,
    32061.905172125946,
    31662.02376438401,
    31658.068303844153,
    31780.36666074413,
    31753.17423306564,
    31858.2107678198,
    31813.83060205969,
    31962.818220859575,
    31931.70911576771,
    31825.51425719078,
    31626.851970459407,
    31581.119913392085,
    31617.072973455393,
    31611.5094124847,
    31530.20810136762,
    31646.444279335676,
    31696.146771985772,
    31577.563661868124,
    31574.530663911097,
    31754.158452446623,
    31806.38826123828,
    31232.8094797136,
    30815.178709428124,
    30442.031183728213,
    30155.91451908987,
    30273.275884126182,
    30233.963431084034,
    29716.543458860087,
    29676.064111348973,
    29747.61453942649,
    29822.0722900913,
    29716.147918809107,
    29836.489897611857,
    29826.16891954389,
    29747.92696289637,
    29816.849605545012,
    29883.87978821354,
    29922.933011746394,
    29990.498230055488,
    29960.950636345005,
    29917.64578832305,
    30049.05622324846,
    30192.654823029014,
    30113.701016503393,
    29884.131130481448,
    29973.88361259791,
    30273.96128251687,
    30287.655572977405,
    30225.458436268458,
    30214.3114139195,
    30268.333153924184,
    30292.6718180732,
    30356.560544223827,
    30516.490648805055,
    30481.013996026013,
    30442.600466509168,
    30607.041608668525,
    30558.059434238643,
    30510.820736211568,
    30453.405170694747,
    30560.89656518738,
    30439.39852535882,
    30456.59220939045,
    30450.94248546586,
    30252.03688376298,
    29864.505025286606,
    29772.548626165146,
    29584.998497413177,
    29699.7807788456,
    29479.74284042521,
    29521.956998194808,
    29574.43736989577,
    29532.45329310963,
    29562.090991487643,
    29607.213505024767,
    29689.24629481384,
    29821.873913200285,
    29730.029167670673,
    29714.143487149733,
    29725.234606257076,
    29609.178004971825,
    29578.148143603947,
    29581.420758749617,
    29732.10262479593,
    29710.49546102798,
    29720.641012345193,
    29730.641092547285,
    29765.64851574251,
    29733.363539915932,
    29737.028442888015,
    29699.8785883357,
    29571.032332200102,
    29624.249360524263,
    29760.23846765505,
    29844.875625301815,
    29785.441614275438,
    29737.83695354961,
    29804.59757879438,
    29677.48496250744,
    29764.09789263644,
    29830.38719870293,
    29833.887021526323,
    29872.3603087139,
    29800.64349266617,
    29734.69663334953,
    29805.036650183778,
    29787.948640749368,
    29759.10414329555,
    29818.517451648473,
    29783.475932989866,
    29767.499978180043,
    29729.354322708223,
    29658.51689048524,
    29689.01785881175,
    29718.274273602165,
    29750.855625361208,
    29680.99989905491,
    29826.231750492752,
    29990.41131416227,
    29869.745911319853
  ]
},
"price_change_percentage_1h_in_currency": -0.19197973812221236
}
 
*/

struct Coin : Identifiable, Codable {
    let id, symbol, name: String
    let image: String
    let currentPrice: Double
    let marketCap, marketCapRank: Double?
    let fullyDilutedValuation: Double?
    let totalVolume, high24H, low24H, priceChange24H: Double?
    let priceChangePercentage24H: Double?
    let marketCapChange24H: Double?
    let marketCapChangePercentage24H: Double?
    let circulatingSupply, totalSupply, maxSupply, ath: Double?
    let athChangePercentage: Double?
    let athDate: String?
    let atl: Double?
    let atlChangePercentage: Double?
    let atlDate: String?
    let lastUpdated: String?
    let sparklineIn7D: SparklineIn7D?
    let priceChangePercentage1HInCurrency: Double?
    var currentHoldings: Double?
    
    enum CodingKeys:String, CodingKey{
        case id, symbol, name, image
        case currentPrice = "current_price"
        case marketCap = "market_cap"
        case marketCapRank = "market_cap_rank"
        case fullyDilutedValuation="fully_diluted_valuation"
        case totalVolume = "total_volume"
        case high24H = "high_24h"
        case low24H = "low_24h"
        case priceChange24H = "price_change_24h"
        case priceChangePercentage24H="price_change_percentage_24h"
        case marketCapChange24H = "market_cap_change_24h"
        case marketCapChangePercentage24H = "market_cap_change_percentage_24h"
        case circulatingSupply = "circulating_supply"
        case totalSupply = "total_supply"
        case maxSupply = "max_supply"
        case ath
        case athChangePercentage = "ath_change_percentage"
        case athDate = "ath_date"
        case atl
        case atlChangePercentage = "atl_change_percentage"
        case atlDate = "atl_date"
        case lastUpdated = "last_updated"
        case sparklineIn7D = "sparkline_in_7d"
        case priceChangePercentage1HInCurrency = "price_change_percentage_1h_in_currency"
        case currentHoldings
    }
    
    func updateHoldings(amount : Double) -> Coin{
        return Coin(id: id, symbol: symbol, name: name, image: image, currentPrice: currentPrice, marketCap: marketCap, marketCapRank: marketCapRank, fullyDilutedValuation: fullyDilutedValuation, totalVolume: totalVolume, high24H: high24H, low24H: low24H, priceChange24H: priceChange24H, priceChangePercentage24H: priceChangePercentage24H, marketCapChange24H: marketCapChange24H, marketCapChangePercentage24H: marketCapChangePercentage24H, circulatingSupply: circulatingSupply, totalSupply: totalSupply, maxSupply: maxSupply, ath: ath, athChangePercentage: athChangePercentage, athDate: athDate, atl: atl, atlChangePercentage: atlChangePercentage, atlDate: atlDate, lastUpdated: lastUpdated, sparklineIn7D: sparklineIn7D, priceChangePercentage1HInCurrency: priceChangePercentage1HInCurrency, currentHoldings: amount)
    }
    
    var coinValue: Double{
        return (currentHoldings ?? 0) * currentPrice
    }
    
    var rank: Int{
        return Int(marketCapRank ?? 0)
    }
}

struct SparklineIn7D: Codable {
    let price: [Double]?
}

