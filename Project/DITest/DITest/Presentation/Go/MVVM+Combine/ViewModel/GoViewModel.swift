//
//  GoViewModel.swift
//  DITest
//
//  Created by Tommy on 20/01/22.
//

import Foundation
import Combine

@available(iOS 13.0, *)
class GoViewModel {
    @Published var textResult = "default"
    var isChange = false
    
    func changeData() {
        isChange = !isChange
        textResult = isChange ? "oke" : "no"
    }
}
