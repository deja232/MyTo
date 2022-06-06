//
//  HomeView.swift
//  Crypto
//
//  Created by SIFT - Telkom DBT Air 8 on 05/06/22.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject private var mm: MarketModel
    @State private var Seeeport: Bool = false

    
    var body: some View {
        NavigationView{
            ZStack{
                
                Color.theme.back.ignoresSafeArea()
                ScrollView{
                    HStack {
                        VStack(){
                            Text("Username")
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
                        NavigationLink(destination: Profil()){
                            Image(systemName: "person.circle.fill")
                                .resizable(resizingMode:.stretch)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 35, height: 80)
                                .padding(.bottom, 80)
                                .foregroundColor(.orange)
                        }
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
                            if !Seeeport{
                                List{
                                    ForEach(mm.All){ coin in
                                        NavigationLink{
                                            Details(coin: coin)
                                        } label: {
                                            Home(coin: coin, showww: false)
                                        }
                                    }
                                }
                            }
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
            .navigationBarHidden(true)
        }
    }
    
    struct HomeView_Previews: PreviewProvider {
        static var previews: some View {
            NavigationView{
                HomeView()
                    .environmentObject(ad.marketm)
            }
        }
    }
}
