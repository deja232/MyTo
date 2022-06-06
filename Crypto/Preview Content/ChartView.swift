//
//  WishlistView.swift
//  Crypto
//
//  Created by SIFT - Telkom DBT Air 8 on 05/06/22.
//

import SwiftUI

struct ChartView: View {
    
    let data : [Double]
    let Y: Double
    let y: Double
    let lc: Color
    @State private var ppercent: CGFloat = 0
    
    init(coin : Coin){
        data = coin.sparklineIn7D?.price ?? []
        Y = data.max() ?? 0
        y = data.min() ?? 0
        
        let pchange = (data.last ?? 0) - (data.first ?? 0 )
        lc = pchange > 0 ?
        Color.green :
        Color.red
    }
    
    
    
    var body: some View {
        VStack{
            graph
                .frame(height: 200)
                .background(graphback)
        }
        .onAppear{
            DispatchQueue.main.asyncAfter(deadline:.now()+1.0){
                withAnimation(.linear(duration: 5.0)){
                    ppercent = 1.0
                }
            }
            }
    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView(coin: ad.coin )
    }
}

extension ChartView {
    
    private var graph : some View{
        GeometryReader { geometry in
        Path {
            path in
            for index in data.indices{
                let xchart = geometry.size.width / CGFloat(data.count) * CGFloat(index + 1)
                
                let yline = Y - y
                
                let ychart = (1 - CGFloat((data[index] - y) / yline)) * geometry.size.height
                
                if index == 0 {
                    path.move(to: CGPoint(x: xchart,y:ychart))
                }
                path.addLine(to: CGPoint(x:xchart,y:ychart))
            }
        }
        .trim(from: 0, to: ppercent)
        .stroke(lc, style: StrokeStyle(lineWidth: 3, lineCap: .round, lineJoin: .round))
        .shadow(color: lc, radius: 10, x: 0.0, y: 20)
        }
    }
    private var graphback : some View{
        VStack{
            Divider()
            Spacer()
            Divider()
            Spacer()
            Divider()
        }
    }
}
