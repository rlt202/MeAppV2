//
//  UserData.swift
//  MeAppV2
//
//  Created by Даниил Никулин on 23.10.2020.
//

import Foundation

struct UserData {
    var name: String
    var password: String
    
    static func catchDataOfUser() -> UserData {
        UserData(name: "rlt", password: "12345")
    }
}
