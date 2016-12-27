//
//  CurrencyRateViewController.swift
//  ExchangeRate
//
//  Created by Roman Rybachenko on 12/27/16.
//  Copyright © 2016 Roman Rybachenko. All rights reserved.
//


import UIKit
import SVProgressHUD

class CurrencyRateViewController: UIViewController, StoryboardIdentifier {
    // MARK: Outlets
    
    // MARK: Properties
    
    // MARK: Overriden funcs
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Today"
        
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        SVProgressHUD.show()
        WebService.sharedInstance.getNBUCurrencyRates(completion: {(respInfo: ResponseInfo) -> Void in
            SVProgressHUD.dismiss()
            print(respInfo.response ?? respInfo.error!)
            
        })
    }

}
