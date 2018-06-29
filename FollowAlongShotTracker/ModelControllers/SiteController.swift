//
//  SiteController.swift
//  FollowAlongShotTracker
//
//  Created by David Sadler on 6/6/18.
//  Copyright © 2018 David Sadler. All rights reserved.
//

import Foundation
import CoreData

class SiteController {
    
    //MARK: - Shared Instance
    static let shared = SiteController()
    
    //MARK: - Internal Properties
    var sites: [Site] {
        let request: NSFetchRequest<Site> = Site.fetchRequest()
        let moc = CoreDataStack.context
        do {
            let result = try moc.fetch(request)
            return result
        } catch {
            return []
        }
    }
    
    //MARK: - CRUD
    //Create, read, update, delete
    func createSite(identifier: Double, color: Double) -> Site {
        let site = Site(color: color, identifier: identifier)
        saveToPersistentStorage()
        return site
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
    
    func armUpdateSite(site: Site) {
        if site.color > 1 {
            site.color -= 1
            saveToPersistentStorage()
        } else {
            site.color = 4.0
            saveToPersistentStorage()
        }
    }
}

func updateSite(site: Site, bodyPart: BodyPart) {
    let num = bodyPart.numberOfSites
    if site.color > 1 {
        site.color -= 1
        saveToPersistentStorage()
    } else {
        site.color = num
        saveToPersistentStorage()
    }
}



func abdomenUpdateSite(site: Site) {
    if site.color > 1 {
        site.color -= 1
        saveToPersistentStorage()
    } else {
        site.color = 14.0
        saveToPersistentStorage()
    }
}

func hipUpdateSite(site: Site) {
    if site.color > 1 {
        site.color -= 1
        saveToPersistentStorage()
    } else {
        site.color = 6.0
        saveToPersistentStorage()
    }
}

func thighUpdateSite(site: Site) {
    if site.color > 1 {
        site.color -= 1
        saveToPersistentStorage()
    } else {
        site.color = 8.0
        saveToPersistentStorage()
    }
}

//MARK :- Persistence
func saveToPersistentStorage() {
    if CoreDataStack.context.hasChanges {
    do {
        try CoreDataStack.context.save()
    } catch {
        print(error.localizedDescription)
    }
}

//context is like a scratchpad for data. if the scratchpad has changes then we will save the changes. The save function throws - means that it can fail. when something throws it must be put into a do,try,catch statement. Do something to try - if it throws an error you can catch it and prin an error.


