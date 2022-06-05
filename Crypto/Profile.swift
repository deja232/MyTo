//
//  Profile.swift
//  Crypto
//
//  Created by SIFT - Telkom DBT Air 8 on 05/06/22.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        VStack{
            VStack(){
            Text("Profile")
                .fontWeight(.bold)
                .font(.system(size: 21))
                .offset(y: -250)
                Image(systemName: "person.circle.fill").resizable().aspectRatio(contentMode: .fill)
                    .frame(width:150, height: 90)
                    .offset(y: -200)
                    .foregroundColor(.orange)
            Text("Username")
                    .font(.system(size: 25))
                    .fontWeight(.semibold)
                    .offset(y: -170)
            Text("Email")
                    .font(.system(size: 24))
                    .fontWeight(.semibold)
                    .offset(y: -150)
            Text("Birthday")
                    .font(.system(size: 15))
                    .foregroundColor(.gray)
                    .offset(x: -130, y: -100)
            Text("March 12")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .offset(x: -117, y: -100)
                    .padding(.bottom, 12)
            Text("Address")
                    .font(.system(size: 15))
                    .foregroundColor(.gray)
                    .offset(x: -133, y: -100)
            Text("Citraland")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .offset(x: -117, y: -100)
                    .padding(.bottom, 12)
            Text("Phone")
                    .font(.system(size: 15))
                    .foregroundColor(.gray)
                    .offset(x: -139, y: -100)
            Text("0853726129837")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .offset(x: -80, y: -100)

        }
            Button(action: {print("Loading")}){
            HStack{
                Text("Edit")
            }
        }
            .frame().frame(width: 300, height: 50)
            .background(Color.blue)
            .cornerRadius(20)
            .foregroundColor(.white)
            .padding()
            
        }
}
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
