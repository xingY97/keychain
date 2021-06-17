//
//  KeychainWrapper.swift
//  KeychainDemo
//
//  Created by X Y on 6/16/21.
//

import Foundation
import KeychainSwift

class KeychainWrapper {
    let keychain = KeychainSwift()
    
    func set(_ value: String, forkey ourKey: String) -> Bool{
        keychain.set(value, forKey: ourKey)
    }
}
