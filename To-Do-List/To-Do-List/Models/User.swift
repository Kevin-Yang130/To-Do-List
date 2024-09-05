//
//  User.swift
//  To-Do-List
//
//  Created by Kevin Yang-Li on 9/3/24.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval 
}
