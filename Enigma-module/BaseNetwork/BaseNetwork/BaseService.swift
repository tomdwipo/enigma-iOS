//
//  Testing.swift
//  BaseNetwork
//
//  Created by Tommy on 10/01/22.
//

import Foundation
import Moya

public class BaseService {
    var provider = MoyaProvider<ApiHelper>()
    
   public init() {
        
    }
    
    public func getField(responseData: @escaping (_ field: String) -> Void){
        provider.request(.field, completion: { result in
            switch result {
            case .success(let response):
                let data = try? JSONDecoder().decode(FieldModel.self, from: response.data)
                responseData(data?.data[0].field ?? "")
            case .failure(let error):
                print(error)
            }
        })
    }
    
    public func postPopular(responseData: @escaping (_ titleModule: String) -> Void){
        provider.request(.landingPopular, completion: { result in
            switch result {
            case .success(let response):
                let data = try? JSONDecoder().decode(PopularModel.self, from: response.data)
                responseData(data?.data[0].title_module ?? "")
            case .failure(let error):
                print(error)
            }
        })
    }
    
    public func search(query: String, page: String, limit: String, responseData: @escaping (_ titleModule: String) -> Void){
        let plugin: PluginType = NetworkLoggerPlugin(configuration: .init(logOptions: .verbose))
        provider = MoyaProvider<ApiHelper>(plugins: [plugin])
        provider.request(.search(query: query, page: page, limit: limit), completion: { result in
            switch result {
            case .success(let response):
                let data = try? JSONDecoder().decode(SearchModel.self, from: response.data)
                responseData(data?.data[0].type ?? "")
            case .failure(let error):
                print(error)
            }
        })
    }
}


