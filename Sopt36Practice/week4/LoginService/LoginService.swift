//
//  LoginService.swift
//  Sopt36Practice
//
//  Created by 이나연 on 5/8/25.
//

import Foundation

final class LoginService {
    static let shared = LoginService()
    private init() {}
    
    func makeRequestBody(loginId: String,
                         password: String) -> Data?{
        do{
            let data = LoginRequestBody(loginId: loginId,
                                        password: password)
            let jsonEncoder = JSONEncoder()
            let requestBody = try jsonEncoder.encode(data)
            return requestBody
        } catch {
            print(error)
            return nil
        }
    }
    
    func makeRequest(body: Data?) -> URLRequest {
        let url = URL(string: "http://api.atsopt-seminar4.site/api/v1/auth/signin")!
        var request = URLRequest(url: url)
        
        request.httpMethod = "POST"
        
        let header = ["Content-Type": "application/json"]
        header.forEach {
            request.addValue($0.value, forHTTPHeaderField: $0.key)
        }
        if let body = body {
            request.httpBody = body
        }
        
        return request
    }
    
    func postLoginData(loginId: String,
                       password: String) async throws -> LoginResponseBody {
        guard let body = makeRequestBody(loginId: loginId, password: password)
        else {
            throw NetworkError.requestEncodingError
        }
        
        let request = self.makeRequest(body: body)
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
            let decoded = try JSONDecoder().decode(LoginResponseWrapper.self, from: data)
            UserService.shared.userId = decoded.data.userId
            return decoded.data
        } catch {
            throw error
        }
    }
    
    private func configureHTTPError(errorCode: Int) -> Error{
        return NetworkError(rawValue: errorCode) ?? NetworkError.unknownError
    }
}
