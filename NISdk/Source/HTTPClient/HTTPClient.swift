//
//  HttpClient.swift
//  NISdk
//
//  Created by Johnny Peter on 09/08/19.
//  Copyright © 2019 Network International. All rights reserved.
//

import Foundation

public enum HTTPClientErrors: Error {
    case missingUrl
}

public class HTTPClient {
    let session: URLSession
    let request: NSMutableURLRequest
    
    public init?(url: String) {
        if let url = URL(string: url) {
            self.session = URLSession(configuration: URLSessionConfiguration.default)
            self.request = NSMutableURLRequest(url: url)
            self.request.httpMethod = "GET" // default value
        } else {
            print("Invalid url")
            return nil
        }
    }
    
    public func withMethod(method: String) -> HTTPClient {
        request.httpMethod = method
        return self
    }
    
    public func withHeaders(headers: [String: String]) -> HTTPClient {
        for(key, value) in headers {
            request.addValue(key, forHTTPHeaderField: value)
        }
        return self
    }
    
    public func withBodyData(data: Data) -> HTTPClient {
        request.httpBody = data
        return self
    }
    
    public func withBodyData(data: String) -> HTTPClient {
        request.httpBody = data.data(using: .utf8)
        return self
    }
    
    public func makeRequest(with completionHandler: @escaping ((Data?, URLResponse?, Error?) -> Void)) {
            let task = session.dataTask(with: self.request as URLRequest, completionHandler: completionHandler)
            task.resume()
    }
}
