//
//  Network.swift
//  Crypto
//
//  Created by SIFT - Telkom DBT Air 8 on 06/06/22.
//

import Foundation
import Combine

class Network{
    
    enum NetError: LocalizedError{
        
        case BadUrl(url: URL)
        case Unknown
        
        var errorDescription: String? {
            switch self {
            case .BadUrl(url: let url): return "Error Response URL: \(url)"
            case .Unknown: return "Error occured"
            }
        }
    }
    
    static func download(url: URL) -> AnyPublisher<Data, Error> {
       return URLSession.shared.dataTaskPublisher(for: url)
             .subscribe(on: DispatchQueue.global(qos: .default))
             .tryMap({ try URLResponse(output: $0, url: url)})
             .receive(on: DispatchQueue.main)
             .eraseToAnyPublisher()
    }
    static func URLResponse(output : URLSession.DataTaskPublisher.Output, url : URL)throws -> Data{
        guard let response = output.response as? HTTPURLResponse,
                response.statusCode >= 200 && response.statusCode < 300 else{
            throw NetError.BadUrl(url : url)
        }
        return output.data
    }
    
    static func handler(completion : Subscribers.Completion<Error>){
        switch completion{
    case .finished:
        break
    case.failure(let error):
        print(error.localizedDescription)
      }
    }
}
