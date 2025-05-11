//
//  ChangeNicknameService.swift
//  Sopt36Practice
//
//  Created by 이나연 on 5/9/25.
//

import Foundation

final class PatchNicknameService {
    
    static let shared = PatchNicknameService()
    private init() {}
    
    func makeRequestBody(nickname: String) -> Data? {
        do{
            let data = PatchNickNameRequestBody(nickname: nickname)
            let jsonEncoder = JSONEncoder()
            let requestBody = try jsonEncoder.encode(data)
            return requestBody
        } catch {
            print(error)
            return nil
        }
    }
    func makeRequest(body: Data?, userId: Int) -> URLRequest? {
        let url = URL(string: "http://api.atsopt-seminar4.site/api/v1/users")!
        var request = URLRequest(url: url)
        
        request.httpMethod = "PATCH"
        
        let header = ["Content-Type": "application/json", "userId" : "\(userId)"]
        header.forEach {
            request.addValue($0.value, forHTTPHeaderField: $0.key)
        }
        if let body = body {
            request.httpBody = body
        }
        
        return request
    }
    
    func patchChangedNickname(userId: Int, nickname: String) async throws -> PatchNickNameResponseWrapper {
        guard let body = makeRequestBody(nickname: nickname)
        else {
            throw NetworkError.requestEncodingError
        }
        
        guard let request = self.makeRequest(body: body, userId: userId) else {  throw NetworkError.requestEncodingError
        }
        
        let (data, response) = try await URLSession.shared.data(for: request)
        dump(request)
        guard let httpResponses = response as? HTTPURLResponse else {
            throw NetworkError.responseError
        }
        dump(response)
        guard(200...299).contains(httpResponses.statusCode) else {
            throw configureHTTPError(errorCode: httpResponses.statusCode)
        }
        do {
            let decoded = try JSONDecoder().decode(PatchNickNameResponseWrapper.self, from: data)
            return decoded
        } catch {
            throw error
        }
    }
    
    private func configureHTTPError(errorCode: Int) -> Error{
        return NetworkError(rawValue: errorCode) ?? NetworkError.unknownError
    }
}
