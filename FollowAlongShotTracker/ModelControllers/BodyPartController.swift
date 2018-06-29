//
//  BodyPartController.swift
//  FollowAlongShotTracker
//
//  Created by David Sadler on 6/6/18.
//  Copyright © 2018 David Sadler. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class BodyPartController {
    // MARK: - shared instance
    //shared instance - like a single created instance of bodypartcontroller that can be used at a bunch of places all around the app.
    static let shared = BodyPartController()
    
    var bodyParts: [BodyPart] {
        //request data from persistent storage.
        let request: NSFetchRequest<BodyPart> = BodyPart.fetchRequest()
         //mangaged object context
        let moc = CoreDataStack.context
        do {
            let result = try moc.fetch(request)
            return result
        } catch {
            print("Error retrieving bodyParts array from CoreData: \(error)")
            return []
        }
    }
    
    func createBodyPart(location:String, numberOfSites: Double, color: Double) -> Bodypart {
        //initialize bodypart with passed in values
        let bodyPart = BodyPart(color: color, location: location, numberOfSites: numberOfSites)
        //saveToPersistentStorage()
        var i = 0.0
        while i < numberOfSites {
            //let site = SiteController.shared.createSite(identifier: i, color: i+1)
            //bodyPart.addToSites(site)
            saveToPersistentStorage()
            i += 1
        }
        return bodyPart
    }
    
    //this might not even get called - since all site are updating
    func updateBodyPart(bodyPart: BodyPart) {
        if bodyPart.color > 1 {
            bodyPart.color -= 1
            saveToPersistentStorage()
        }else {
            bodyPart.color = 7.0
            saveToPersistentStorage()
        }
    }
    
    func updateBodyParts() {
        for bodyPart in bodyParts {
            if bodyPart.color > 1 {
                bodyPart.color -= 1
            } else {
                bodyPart.color = 7.0
            }
        }
        saveToPersistentStorage()
    }
    func determinColor(colorNumber: Double) -> UIColor {
        switch colorNumber {
        case 1.0:
            return UIColor.green
        case 7.0:
            return UIColor.red
        default:
            return UIColor.blue
        }
    }
    
    //if there are changes - we need them to be saved
    func saveToPersistentStorage() {
        //if the container - the stack - has changes then it will yield T or F.
        if CoreDataStack.context.hasChanges {
            do {
                try CoreDataStack.context.save()
            } catch {
                print(error.localizedDescription)
            }
        }
    }
}
