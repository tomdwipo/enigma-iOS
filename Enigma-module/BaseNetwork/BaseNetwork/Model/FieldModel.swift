//
//  FieldModel.swift
//  BaseNetwork
//
//  Created by RATAMATE on 11/01/22.
//

import Foundation

struct FieldModel: Codable {
    let data: [FieldItemModel]
}

struct FieldItemModel: Codable {
    let field: String?
}
