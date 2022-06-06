//
//  Capped.swift
//  Crypto
//
//  Created by SIFT - Telkom DBT Air 8 on 06/06/22.
//

import Foundation

extension Double{
    private var Cap2: NumberFormatter{
        let cap = NumberFormatter()
        cap.usesGroupingSeparator = true
        cap.numberStyle = .currency
        cap.minimumFractionDigits = 2
        cap.maximumFractionDigits = 2
        return cap
    }
    
    func priceee() -> String{
        let num = NSNumber(value: self)
        return Cap2.string(from: num) ?? "$0.00"
    }
    
    private var Cap6: NumberFormatter{
        let cap = NumberFormatter()
        cap.usesGroupingSeparator = true
        cap.numberStyle = .currency
        cap.minimumFractionDigits = 2
        cap.maximumFractionDigits = 5
        return cap
    }
    
    func pricee() -> String{
        let num = NSNumber(value: self)
        return Cap6.string(from: num) ?? "$0.00"
    }
    
    func percentagee() -> String{
        return String(format: "%.2f", self)
    }
    func percent() ->String{
        return percentagee() + "%"
    }
}
