//
//  InjectionController.swift
//  FollowAlongShotTracker
//
//  Created by David Sadler on 6/29/18.
//  Copyright © 2018 David Sadler. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class InjectionController {
    
    //MARK:- Shared Instance
    static let shared = InjectionController()
    
    //MARK:- Internal Properties
    
    //adding the curly braces to a variable it becomes a computed property. Stored property is a gerneral property - a usual let or var.
    
    //moc - managed object conext. between the user and the storage. we give it the request to grab it from persistent storage - here we are requesting all the injections. if it doeset work for some reason we will return just an empty array.
    var injections: [Injection] {
        let request: NSFetchRequest<Injection> = Injection.fetchRequest()
        let moc = CoreDataStack.context
        do {
            let result = try moc.fetch(request)
            return result
        } catch {
            return []
        }
       
    }
    //MARK: - CRUD (Create Read Update Delete)
    func createInjection(notes: String?, photo: UIImage?) -> Injection? {
        if let picture = photo {
            guard let photoData = UIImageJPEGRepresentation(picture, 1.0) as Data? else { return nil }
            let injection = Injection(date: Date(), notes: notes, photo: photoData, context: CoreDataStack.context)
            saveToPersistentStorage()
            return injection
        } else {
            let injection = Injection(date: Date(), notes: notes, photo: nil, context: CoreDataStack.context)
            saveToPersistentStorage()
            return injection
        }
     
    }
    
    func deleteInjection(injection: Injection) {
        let moc = injection.managedObjectContext
        moc?.delete(injection)
        saveToPersistentStorage()
    }
    
    //MARK: - Persistence
    func saveToPersistentStorage() {
        if CoreDataStack.context.hasChanges {
            do {
                try CoreDataStack.context.save()
            } catch {
                print(error.localizedDescription)
            }
        }
    }
    
}
