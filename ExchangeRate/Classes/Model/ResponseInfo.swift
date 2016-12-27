//
//  ResponseInfo.swift
//  VKAudioSwift3
//
//  Created by Roman Rybachenko on 11/7/16.
//  Copyright © 2016 Roman Rybachenko. All rights reserved.
//

import Foundation

class ResponseInfo {
    // MARK: Properties
    let response: Any?
    let error: Error?
    let statusCode: Int?
    
    init(response: Any?, error: Error?, task: URLSessionDataTask?) {
        self.response = response
        self.error = error

        let urlResponse: HTTPURLResponse? = task?.response as? HTTPURLResponse
        self.statusCode = urlResponse?.statusCode
    }
    
    init(data: Data?, error: Error?, urlResponse: URLResponse?) {
        self.response = data
        self.error = error
        
        let response = urlResponse as? HTTPURLResponse
        self.statusCode = response?.statusCode
    }
}
