//
//  HomeView.swift
//  Crypto
//
//  Created by SIFT - Telkom DBT Air 8 on 05/06/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack{
        Color.theme.back.ignoresSafeArea()
        ScrollView{
            HStack {
                VStack(){
                Text("John Doe")
                    .font(.title)
                    .fontWeight(.heavy)
                    .padding(.trailing, 10)
                HStack(){
                Text("Welcome Back 👋")
            }
            }
            }
            .padding(.trailing, 250)
        ZStack(){
        Image("Cardground")
                .resizable().aspectRatio(contentMode:.fill)
                .frame(width:300)
                .offset(x:2,y:50)
        Image(systemName: "person.circle.fill")
                .resizable(resizingMode:.stretch)
                .aspectRatio(contentMode: .fit)
                .frame(width: 35, height: 80)
                .padding(.bottom, 80)
                .foregroundColor(.orange)
        }
                VStack(){
                Text("MYTO")
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .offset(y: -80)
                Text("Your Balance")
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .offset(y:-50)
            }
            HStack(){
                Text("MY Crypto")
                    .fontWeight(.heavy)
                    .padding()
                    Spacer()
                Text("View All")
                    .padding()
                    .foregroundColor(.blue)
            }
            ScrollView(.horizontal){
                HStack {
                VStack {
                HStack {
                VStack {
                Text("Bitcoin")
                        .padding()
                Text("BTC")
                        .offset(x:-11, y: -12)
                        .font(.subheadline)
                }

                Spacer()

                Image("bitcoin")
                        .resizable().aspectRatio(contentMode: .fit)
                        .padding(.trailing, 20)
                        
                }
                HStack {
                Text("32,927.75")
                        .font(.system(size: 17))
                        .offset(x:-10)
                Text("1.83%")
                        .foregroundColor(.red)
                }
                .padding()
                }
                .background()
                .cornerRadius(13)
                .shadow(radius: 5)
                .padding()
                .frame(width: 200, height: 150)
                    
                    VStack{
                    HStack {
                    VStack {
                    Text("Binance")
                            .padding()
                    Text("BNB")
                            .offset(x:-11, y: -12)
                            .font(.subheadline)
                    }

                    Spacer()

                    Image("binance")
                            .resizable().aspectRatio(contentMode: .fit)
                            .padding(.trailing, 15)
                            
                    }
                    HStack {
                    Text("393,25")
                            .font(.system(size: 17))
                            .offset(x:-10)
                    Text("2.14%")
                            .foregroundColor(.red)
                    }
                    .padding()
                    }
                    .background()
                    .cornerRadius(13)
                    .shadow(radius: 5)
                    .padding()
                    .frame(width: 200, height: 150)
                    
                    VStack{
                    HStack {
                    VStack {
                    Text("Ethereum")
                            .padding()
                    Text("ETH")
                            .offset(x:-11, y: -12)
                            .font(.subheadline)
                    }

                    Spacer()

                    Image("eth")
                            .resizable().aspectRatio(contentMode: .fit)
                            .padding(.trailing, 15)
                            
                    }
                    HStack {
                    Text("2,880.96")
                            .font(.system(size: 17))
                            .offset(x:-10)
                    Text("2.26%")
                            .foregroundColor(.red)
                    }
                    .padding()
                    }
                    .background()
                    .cornerRadius(13)
                    .shadow(radius: 5)
                    .padding()
                    .frame(width: 200, height: 150)
                    
                    VStack{
                    HStack {
                    VStack {
                    Text("Ripple")
                            .padding()
                    Text("XRP")
                            .offset(x:-11, y: -12)
                            .font(.subheadline)
                    }

                    Spacer()

                    Image("xrp")
                            .resizable().aspectRatio(contentMode: .fit)
                            .padding(.trailing, 15)
                            
                    }
                    HStack {
                    Text("0.6716")
                            .font(.system(size: 17))
                            .offset(x:-10)
                    Text("4.75%")
                            .foregroundColor(.red)
                    }
                    .padding()
                    }
                    .background()
                    .cornerRadius(13)
                    .shadow(radius: 5)
                    .padding()
                    .frame(width: 200, height: 150)
                    
                    VStack{
                    HStack {
                    VStack {
                    Text("Doge Coin")
                            .padding()
                    Text("DOGE")
                            .offset(x:-11, y: -12)
                            .font(.subheadline)
                    }

                    Spacer()

                    Image("doge")
                            .resizable().aspectRatio(contentMode: .fit)
                            .padding(.trailing, 15)
                            
                    }
                    HStack {
                    Text("0.1399")
                            .font(.system(size: 17))
                            .offset(x:-10)
                    Text("4.13%")
                            .foregroundColor(.blue)
                    }
                    .padding()
                    }
                    .background()
                    .cornerRadius(13)
                    .shadow(radius: 5)
                    .padding()
                    .frame(width: 200, height: 150)
                    
                    VStack{
                    HStack {
                    VStack {
                    Text("Elon Buys Twitter")
                            .padding()
                    Text("EBT")
                            .offset(x:-11, y: -12)
                            .font(.subheadline)
                    }

                    Spacer()

                    Image("ebt")
                            .resizable().aspectRatio(contentMode: .fit)
                            .padding(.trailing, 15)
                            
                    }
                    HStack {
                    Text("0.0000007111")
                            .font(.system(size: 13))
                            .offset(x:-10)
                    Text("3414.93%")
                            .foregroundColor(.blue)
                    }
                    .padding()
                    }
                    .background()
                    .cornerRadius(13)
                    .shadow(radius: 5)
                    .padding()
                    .frame(width: 200, height: 150)
                }
            }
            
            HStack{
                Text("Last Seen")
                    .font(.system(size: 18))
                    .fontWeight(.bold)
                Spacer()
            }
            .padding()
        }
    }
    }

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
}

