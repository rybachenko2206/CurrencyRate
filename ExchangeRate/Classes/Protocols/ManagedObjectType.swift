//
//  ManagedObjectType.swift
//  BudgetControl
//
//  Created by Roman Rybachenko on 12/1/16.
//  Copyright © 2016 Roman Rybachenko. All rights reserved.
//

import Foundation
import CoreData


protocol ManagedObjectType {
    static var entityName: String { get }
    
}

extension ManagedObjectType {
    public static func fetchRequest(predicateFormat: String,
                                    arguments: CVarArg...,
                                    sortDescriptors: [NSSortDescriptor]?) -> NSFetchRequest<NSFetchRequestResult> {
        
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: entityName)
        request.sortDescriptors = sortDescriptors
        
        let predicate = NSPredicate(format: predicateFormat, arguments)
        request.predicate = predicate
        
        return request
    }
}
