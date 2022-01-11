//
//  Testing.swift
//  BaseNetwork
//
//  Created by RATAMATE on 10/01/22.
//

import Foundation

public class Testing {
    public static func Testing(){
        print("testing okkeee")
    }
}

public func bundle() -> Bundle {
    let podBundle = Bundle(for: Testing.self)
    let bundleURL = podBundle.url(forResource: "BaseNetwork", withExtension: "bundle")
    if bundleURL == nil {
        return podBundle
    }else{
        return Bundle(url: bundleURL!)!
    }
}
