//
//  Stats.swift
//  Crypto
//
//  Created by SIFT - Telkom DBT Air 8 on 06/06/22.
//

import Foundation

struct Stats : Identifiable{
    
    let id = UUID().uuidString
    let value :String
    
    init(value: String){
        self.value = value
    }
}
