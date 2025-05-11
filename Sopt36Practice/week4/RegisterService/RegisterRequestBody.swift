//
//  RegisterRequestBody.swift
//  Sopt36Practice
//
//  Created by 이나연 on 5/3/25.
//

struct RegisterRequestBody: Codable {
    let loginId: String
    let password: String
    let nickname: String
}
