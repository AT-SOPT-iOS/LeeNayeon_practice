//
//  NicknameListResponseBody.swift
//  Sopt36Practice
//
//  Created by 이나연 on 5/3/25.
//

import Foundation

struct NicknameListResponseWrapper: Codable {
    let success: Bool
    let code: String
    let message: String
    let data: NicknameListResponseList
}

struct NicknameListResponseList: Codable {
    let nicknameList: [String]
}

struct Nickname: Codable {
    let nickname: String
}
