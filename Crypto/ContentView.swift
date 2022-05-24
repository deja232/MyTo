//
//  ContentView.swift
//  Crypto
//
//  Created by SIFT - Telkom DBT Air 8 on 24/05/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack(){
            Text("Crypto")
                .font(.title)
                .fontWeight(.heavy)
            Spacer()
        }
        .offset(y:-250)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
