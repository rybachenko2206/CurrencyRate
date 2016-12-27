//
//  StoryboardIdentifier.swift
//  UserNotificationSwift3
//
//  Created by Roman Rybachenko on 11/23/16.
//  Copyright © 2016 Roman Rybachenko. All rights reserved.
//

import Foundation
import UIKit

protocol StoryboardIdentifier: class  {}

extension StoryboardIdentifier where Self: UIViewController {
    static var storyboardIdentifier: String {
        return String(describing: self)
    }
}
