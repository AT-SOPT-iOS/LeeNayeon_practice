//
//  PatchNickNameResponseModel.swift
//  Sopt36Practice
//
//  Created by 이나연 on 5/9/25.
//

struct PatchNickNameResponseWrapper: Codable {
    let success: Bool
    let code: String
    let message: String
    let data: String?
}
