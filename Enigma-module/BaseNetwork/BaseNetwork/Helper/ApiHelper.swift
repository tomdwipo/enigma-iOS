//
//  ApiHelper.swift
//  BaseNetwork
//
//  Created by RATAMATE on 11/01/22.
//

import Foundation
import Moya

enum ApiHelper {
    case field
    case landingPopular
    case search(query: String, page: String, limit: String)
}

extension ApiHelper: TargetType {
    var headers: [String : String]? {
        var headers : [String: String] = [:]
        headers["Authorizations"] = "jlhlkhj;l"
        return headers
    }
    
    var baseURL: URL {
         let url = URL(string: "https://dev-ruangkonstruksi-backend.herokuapp.com/")!
        return url
    }
    
    var path: String {
        switch self {
        case .field :
            return "field"
        case .landingPopular:
            return "module/landing/popular"
        case .search:
            return "articles"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .field, .search:
            return .get
        case .landingPopular:
            return .post
        }
    }
    
    var parameters: [String: Any] {
        switch self {
        case .field, .landingPopular :
            let params:[String: Any] = [:]
            return params
        case .search(let query,let page,let limit):
            var params:[String: Any] = [:]
            params["query"] = query
            params["page"] = page
            params["limit"] = limit
            return params
        }
    }
    
    var task: Task {
        switch self {
        case .field :
            return .requestParameters(parameters: parameters, encoding: URLEncoding.default)
        case .landingPopular:
            return .requestParameters(parameters: parameters, encoding: JSONEncoding.default)
        case .search:
            return .requestParameters(parameters: parameters, encoding: URLEncoding.queryString)


        }
    }
}
