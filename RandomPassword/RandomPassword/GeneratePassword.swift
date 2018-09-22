//
//  GeneratePassword.swift
//  RandomPassword
//
//  Created by Andy Ron on 2018/9/22.
//  Copyright © 2018年 Andy Ron. All rights reserved.
//

import Foundation


private let characters = Array("0123456789abcdefghijklmnopqrstuvwxyz" +
"ABCDEFGHIJKLMNOPQRSTUVWXYZ")


func generateRandomString(_ length: Int) -> String {
    var string = ""
    
    for _ in 0 ..< length {
        string.append(generateRandomCharacter())
    }
    return string
}

func generateRandomCharacter() -> Character {
    let index = Int(arc4random_uniform(UInt32(characters.count)))
    return characters[index]
}
