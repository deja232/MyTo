//
//  EditProfile.swift
//  Crypto
//
//  Created by SIFT - Telkom DBT Air 8 on 05/06/22.
//


import SwiftUI

struct EditProfile: View {
    
    @Binding var pro: Profile
    
    var body: some View {
        List {
            HStack {
                Text("Username:").bold()
                Divider()
                TextField("Username", text: $pro.username)
            }
            HStack {
                Text("Birthday:").bold()
                Divider()
                TextField("Birthday", text: $pro.birthday)
            }
            HStack {
                Text("Address:").bold()
                Divider()
                TextField("Address", text: $pro.address)
            }
            HStack {
                Text("Number:").bold()
                Divider()
                TextField("Number", text: $pro.Number)
            }
        }
    }
struct EditProfile_Previews: PreviewProvider {
    static var previews: some View {
        EditProfile(pro: .constant(Profile.default))
    }
}
}
