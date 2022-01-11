//
//  ApiHelper.swift
//  BaseNetwork
//
//  Created by RATAMATE on 11/01/22.
//

import Foundation
import Moya



extension TargetType {
//https://dev-ruangkonstruksi-backend.herokuapp.com/   
//    var baseURL: URL {
//        guard let url = URL(string: "https://dev-ruangkonstruksi-backend.herokuapp.com/") else { fatalError("Server in problem") }
//        return url
//    }

//    var parameterEncoding: ParameterEncoding {
//        return URLEncoding.default
//    }
}


enum ApiHelper {
    case search(query: String, page: String, limit: String)
    case actorList
    case roles
}

extension ApiHelper: TargetType {
  
    var baseURL: URL {
        guard let url = URL(string: "https://dev-ruangkonstruksi-backend.herokuapp.com/") else { fatalError("Server in problem") }
        return url
    }
    
    
    var path: String {
        switch self {
        case .search:
            return "articles"
        case .actorList:
            return "actor/list"
        case .roles:
            return "roles"
        }
    
    }
    
    var method: Moya.Method {
        switch self {
        case .search:
            return .get
        case .actorList:
            return .post
        case .roles:
            return .get
        }
    }
    
    var parameters: [String: Any] {
        switch self {
        case .search(let query, let page, let limit):
            var parameters = [String: Any]()
            parameters["query"] = query
            parameters["page"] = page
            parameters["limit"] = limit
            return parameters
        case .actorList:
            var parameters = [String: Any]()
            parameters["token"] = "0b4fa7ed1ccb4cd7693c47fb874757e3c4aa2025ea2de34922612e97bc00"
            return parameters
        case .roles:
            return [:]
        
        }
    }
    
    var headers: [String : String]? {
        return [:]
    }
    
    var task: Task {
        switch self {
        case .search, .roles:
            return .requestParameters(parameters: parameters, encoding: URLEncoding.default) //URLEncoding.queryString parameterEncoding
        case .actorList:
            return .requestParameters(parameters: parameters, encoding: JSONEncoding.default)
        }
    }
}
