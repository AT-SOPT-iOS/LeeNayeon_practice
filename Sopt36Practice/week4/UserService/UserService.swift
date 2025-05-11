//
//  UserService.swift
//  Sopt36Practice
//
//  Created by 이나연 on 5/9/25.
//

import Foundation

final class UserService {
    static let shared = UserService()
    private init() {}
    
    var userId: Int?
}
