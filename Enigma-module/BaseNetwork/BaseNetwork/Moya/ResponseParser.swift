//
//  ResponseParser.swift
//  BaseNetwork
//
//  Created by RATAMATE on 11/01/22.
//

import Foundation
import Moya

class ResponseParser {
    
    static let shared = ResponseParser()
    
    let decoder = JSONDecoder()
    
    func parse<ResponseType: Codable>(to: ResponseType.Type, from response: Moya.Response) -> ResponseType? {
        do {
            let response = try decoder.decode(ResponseType.self, from: response.data)
            return response
        } catch(let error) {
            print(error)
            return nil
        }
    }
}


class ResponsePaser {
    static let shared = ResponsePaser()
    
    let decoder = JSONDecoder()
    
    func parse<ResponseType: Codable>(to model: ResponseType.Type, from response: Moya.Response) -> ResponseType?{
        do {
            let data = try decoder.decode(model, from: response.data)
            return data
        }catch(let error) {
            print(error)
            return nil
        }
    }
}
