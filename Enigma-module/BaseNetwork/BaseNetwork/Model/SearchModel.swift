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
    let id_role: Int?
    let name_role: String?
}


struct SearchTrueModel: Codable {
    let data: [SearchTrueItemModel]
}

struct SearchTrueItemModel: Codable {
    let id: Int?
    let type: String?
}
