//
//  PopularModel.swift
//  BaseNetwork
//
//  Created by RATAMATE on 11/01/22.
//

import Foundation

//typealias dataModel = [PopularItemModel]


struct PopularModel: Codable {
    let data: [PopularItemModel]
}

struct PopularItemModel: Codable {
    let title_module: String?
}


//[
//
//    {title: title},
//    {title: title},
//
//]
