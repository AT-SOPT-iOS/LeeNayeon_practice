//
//  LoginResponseBdoy.swift
//  Sopt36Practice
//
//  Created by 이나연 on 5/8/25.
//

struct LoginResponseWrapper: Codable {
    let success: Bool
    let code: String
    let message: String
    let data: LoginResponseBody
}

struct LoginResponseBody: Codable {
    let userId: Int
}
