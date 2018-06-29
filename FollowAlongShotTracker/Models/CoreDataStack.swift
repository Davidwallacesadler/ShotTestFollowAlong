//
//  CoreDataStack.swift
//  FollowAlongShotTracker
//
//  Created by David Sadler on 6/6/18.
//  Copyright © 2018 David Sadler. All rights reserved.
//

//file that creates - have all the data create a stack buffer area - buffer commmunicates to HDD - creating the buffer/scratchpad of data. Creating the persistant storage container

import Foundation
import CoreData

enum CoreDataStack {
    
    static let container: NSPersistentContainer = {
        
        let appName = Bundle.main.object(forInfoDictionaryKey: (kCFBundleNameKey as String)) as! String
        let container = NSPersistentContainer(name: appName)
        container.loadPersistentStores() { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        }
        return container
    }()
    
    static var context: NSManagedObjectContext { return container.viewContext }
}


