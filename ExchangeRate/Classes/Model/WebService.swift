//
//  WebService.swift
//  ExchangeRate
//
//  Created by Roman Rybachenko on 12/27/16.
//  Copyright © 2016 Roman Rybachenko. All rights reserved.
//




typealias completionBlock = (ResponseInfo) -> Void


import Foundation
import AFNetworking

class WebService {
    // MARK: Properties
    static let sharedInstance = WebService()
    
    
    // MARK: Public funcs
    
    func getNBUCurrencyRates(completion: @escaping completionBlock) {
        let url = URL.init(string: apiNbuCurencyRateUrl)
        let urlRequest = URLRequest.init(url: url!)
        let session = URLSession.shared
        session.dataTask(with: urlRequest, completionHandler: {(data: Data?, response: URLResponse?, error: Error?) -> Void in
            let responseInfo = ResponseInfo(data: data, error: error, urlResponse: response)
            DispatchQueue.main.async {
                completion(responseInfo)
            }
            
        }).resume()
//        session.dataTask(with: <#T##URL#>, completionHandler: <#T##(Data?, URLResponse?, Error?) -> Void#>)
//        let manager = AFHTTPSessionManager()
//        manager.get(apiNbuCurencyRateUrl, parameters: nil, progress: nil, success: {(sessionDataTask: URLSessionDataTask, response: Any?) -> Void in
//            let responseInfo = ResponseInfo(response: response,
//                                            error: nil,
//                                            task: sessionDataTask)
//            completion(responseInfo)
//        }, failure: {(sessionDataTask: URLSessionDataTask?, error: Error) -> Void in
//            let responseInfo = ResponseInfo(response: nil,
//                                            error: error,
//                                            task: sessionDataTask)
//            completion(responseInfo)
//        })
    }
}
