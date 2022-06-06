//
//  StatisticView.swift
//  Crypto
//
//  Created by SIFT - Telkom DBT Air 8 on 06/06/22.
//

import SwiftUI

struct StatisticView: View {
    
    let stat: Stats
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4){
            Text(stat.value )
        }
    }
}

struct StatisticView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            StatisticView(stat: ad.statm)
                .previewLayout(.sizeThatFits)
            StatisticView(stat: ad.statm2)
                .previewLayout(.sizeThatFits)
            StatisticView(stat: ad.statm3)
                .previewLayout(.sizeThatFits)
        }
    }
}
