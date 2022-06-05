//
//  MarketView.swift
//  Crypto
//
//  Created by SIFT - Telkom DBT Air 8 on 05/06/22.
//

import SwiftUI

struct MarketView: View {
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "arrowshape.turn.up.backward.2")
                    .resizable().aspectRatio(contentMode: .fit)
                    .offset(x:-50 ,y: -100)
                    .frame(width:30, height: 30).foregroundColor(.red)
                Text("Cryptocurrency List")
                    .font(.title2)
                    .fontWeight(.bold)
                    .offset(x:-10 ,y: -100)
        }
            .padding(.top, 50)
            VStack{
            HStack{
                Image("bitcoin")
                    .resizable()
                    .offset(x: -30, y:-90)
                    .frame(width: 60, height:60)
                Text("BTC")
                    .font(.system(size: 17))
                    .fontWeight(.light)
                    .offset(x: -30, y:-90)
                Text("32,927.75 $")
                    .font(.system(size: 25))
                    .fontWeight(.bold)
                    .offset(x: -30, y:-90)
                Text("1.83 %")
                    .font(.system(size: 15))
                    .offset(x: 20, y:-90)
                    .foregroundColor(.red)
                    .shadow(radius: 4)
            }
                HStack{
                    Image("binance")
                        .resizable()
                        .offset(x: -48, y:-90)
                        .frame(width: 60, height:60)
                    Text("BNB")
                        .font(.system(size: 17))
                        .fontWeight(.light)
                        .offset(x: -48, y:-90)
                    Text("393,25$")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .offset(x: -48, y:-90)
                    Text("2.14 %")
                        .font(.system(size: 15))
                        .offset(x: 39, y:-90)
                        .foregroundColor(.red)
                        .shadow(radius: 4)
                }
                HStack{
                    Image("eth")
                        .resizable()
                        .offset(x: -34, y:-90)
                        .frame(width: 60, height:60)
                    Text("ETH")
                        .font(.system(size: 17))
                        .fontWeight(.light)
                        .offset(x: -35, y:-90)
                    Text("2,880.96 $")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .offset(x: -30, y:-90)
                    Text("2.26 %")
                        .font(.system(size: 15))
                        .offset(x: 25, y:-90)
                        .foregroundColor(.red)
                        .shadow(radius: 4)
                }
                HStack{
                    Image("xrp")
                        .resizable()
                        .offset(x: -47, y:-90)
                        .frame(width: 50, height:50)
                    Text("XRP")
                        .font(.system(size: 17))
                        .fontWeight(.light)
                        .offset(x: -46, y:-90)
                    Text("0.6716 $")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .offset(x: -43, y:-90)
                    Text("4.75 %")
                        .font(.system(size: 15))
                        .offset(x: 45, y:-90)
                        .foregroundColor(.red)
                        .shadow(radius: 4)
                }
                HStack{
                    Image("doge")
                        .resizable()
                        .offset(x: -40, y:-90)
                        .frame(width: 60, height:60)
                    Text("DOGE")
                        .font(.system(size: 17))
                        .fontWeight(.light)
                        .offset(x: -45, y:-90)
                    Text("0.1399 $")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .offset(x: -45, y:-90)
                    Text("4.13 %")
                        .font(.system(size: 15))
                        .offset(x: 32, y:-90)
                        .foregroundColor(.blue)
                        .shadow(radius: 4)
                }
                HStack{
                    Image("ebt")
                        .resizable()
                        .offset(x: 3, y:-100)
                        .frame(width: 60, height:60)
                    Text("EBT")
                        .font(.system(size: 17))
                        .fontWeight(.light)
                        .offset(x: 0, y:-100)
                    Text("0.000000711$")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .offset(x: 0, y:-100)
                    Text("3414.93 %")
                        .font(.system(size: 15))
                        .offset(x: 5, y:-100)
                        .foregroundColor(.blue)
                        .shadow(radius: 4)
                }
                Text("Biggest Gains")
                    .font(.system(size: 24))
                    .fontWeight(.semibold)
                    .offset(x:-100, y:-100)
                VStack{
                HStack{
                    Text("ELON BUYS TWITTER (EBT)")
                        .offset(x:-5,y:-80)
                        .font(.title3)
                    Text("3414.93 %")
                        .offset(x: 26,y:-80)
                        .foregroundColor(.blue)
                }
                    HStack{
                        Text("DOGE COIN")
                            .offset(x:-92, y:-70)
                            .font(.title3)
                        Text("4.13 %")
                            .offset(x:100, y:-70)
                            .foregroundColor(.blue)
                    }
                    HStack{
                        Text("BITCOIN (BTC)")
                            .offset(x:-79, y:-60)
                            .font(.title3)
                        Text("1.83 %")
                            .offset(x:89, y:-60)
                            .foregroundColor(.red)
                    }
                    HStack{
                        Text("BINANCE (BNB)")
                            .offset(x:-74, y:-50)
                            .font(.title3)
                        Text("2.14 %")
                            .offset(x:84, y:-50)
                            .foregroundColor(.red)
                    }
                    HStack{
                        Text("ETHEREUM (ETH)")
                            .offset(x:-65, y:-40)
                            .font(.title3)
                        Text("2.26 %")
                            .offset(x:76, y:-40)
                            .foregroundColor(.red)
                    }
                    HStack{
                        Text("RIPPLE (XRP)")
                            .offset(x:-87, y:-30)
                            .font(.title3)
                        Text("4.75 %")
                            .offset(x:95, y:-30)
                            .foregroundColor(.red)
                    }
                }
            }
            
    }
}

struct MarketView_Previews: PreviewProvider {
    static var previews: some View {
        MarketView()
    }
}

}
