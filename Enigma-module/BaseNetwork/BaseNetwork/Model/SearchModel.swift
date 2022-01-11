//
//  SearchModel.swift
//  BaseNetwork
//
//  Created by RATAMATE on 11/01/22.
//

import Foundation

struct SearchModel: Codable {
    let data: [SearchItemModel]
}

struct SearchItemModel: Codable {
    let type: String?
}
