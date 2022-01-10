//
//  Bundle.swift
//  BaseNetwork
//
//  Created by Tommy on 10/01/22.
//

import Foundation

public class BundleNetwork {
    public static func bundle() -> Bundle {
        let podBundle = Bundle(for: BundleNetwork.self)
        let bundleUrl = podBundle.url(forResource: "BaseNetwork", withExtension: "bundle")
        if bundleUrl == nil {
            return podBundle
        }else{
            return Bundle(url: bundleUrl!)!
        }
    }
}
