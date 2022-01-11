//
//  Testing.swift
//  BaseNetwork
//
//  Created by Tommy on 10/01/22.
//

import Foundation
import Moya



public class Testing {
     public init() {
        print("Testing")
    }
    
    public func test(resultResponse: @escaping (_ role: String) -> Void){
        let plugin: PluginType = NetworkLoggerPlugin(configuration: .init( logOptions: .verbose))
        let provider = MoyaProvider<ApiHelper>(plugins: [plugin])
        provider.request(.roles, completion: { result in
            switch result {
            case .success(let response):
                guard let obj = ResponseParser.shared.parse(to: SearchModel.self, from: response) else {
                    return
                }
                
                resultResponse(obj.data[0].name_role ?? "")
                print("testing \(obj.data.count) \(obj.data[0])")
            case .failure(let error):
                print(error)
            }
        })
    }
    
    
    public func search(resultResponse: @escaping (_ role: String) -> Void){
        let provider = MoyaProvider<ApiHelper>()
        provider.request(.search(query: "", page: "1", limit: "5"), completion: { result in
            switch result {
            case .success(let response):
//                guard let obj = ResponsePaser.shared.parse(to: SearchTrueModel.self, from: response) else {
//                    return
//                }
                
                let response = try? JSONDecoder().decode(SearchTrueModel.self, from: response.data)
                resultResponse(response?.data[0].type ?? "")

//                do {
//                    let response = try  JSONDecoder().decode(SearchTrueModel.self, from: response.data)
//                    resultResponse(response.data[0].type ?? "")
//                    print("testingsearch \(response.data.count) \(response.data[0])")
//
//                } catch(let error) {
//                    print(error)
//                }
                
//                resultResponse(obj.data[0].type ?? "")
//
            case .failure(let error):
                print(error)
            }
        })
    }
}


